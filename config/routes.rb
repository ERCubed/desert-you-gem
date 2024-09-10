DesertYouGem::Engine.routes.draw do
  # TODO: Make the redirect configurable to different videos
  # get '*any/*.php', to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ')

  match '*any/*.php', to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ'), via::all
end
