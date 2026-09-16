# frozen_string_literal: true

DesertYou::Engine.routes.draw do
  match '*any',
        to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
        constraints: ->(request) { request.path_info.end_with?('.php') },
        via: %i[get post patch delete]
end
