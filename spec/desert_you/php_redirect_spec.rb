# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'DesertYou .php redirect' do
  let(:target_url) { 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' }

  def dispatch(path, method: 'GET')
    env = Rack::MockRequest.env_for(path, method: method)
    DesertYou::Engine.routes.call(env)
  end

  %w[GET POST PATCH DELETE].each do |verb|
    it "redirects a #{verb} request for a top-level .php path" do
      status, headers, = dispatch('/report.php', method: verb)

      expect(status).to eq(301)
      expect(headers['Location']).to eq(target_url)
    end
  end

  it 'redirects a nested .php path' do
    status, headers, = dispatch('/some/deeply/nested/path.php')

    expect(status).to eq(301)
    expect(headers['Location']).to eq(target_url)
  end

  it 'does not redirect a path without a .php extension' do
    status, = dispatch('/ping')

    expect(status).to eq(404)
  end

  it 'does not redirect a path with a different extension' do
    status, = dispatch('/report.html')

    expect(status).to eq(404)
  end

  it 'is case-sensitive and does not redirect .PHP' do
    status, = dispatch('/report.PHP')

    expect(status).to eq(404)
  end
end
