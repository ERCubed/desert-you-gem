# Desert You Gem

Redirects any *.php call to a certain video.

![Never gonna give you up](https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png)

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'desert_you'
```

And then run `bundle install`.

## Usage

Mount the engine in your application's `config/routes.rb`:

```ruby
Rails.application.routes.draw do
  mount DesertYou::Engine => '/'

  # ... your other routes
end
```

Any request whose path ends in `.php` will now get a permanent redirect to
the configured video, regardless of what else is in your route set.

## Work In Progress

Gem will be set to 1.0.0 when it is ready for use.

Image by Never Gonna Give You Up music video., Fair use, https://en.wikipedia.org/w/index.php?curid=22192466
