DesertYouGem::Engine.routes.draw do
  match '*any',
    to: redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
    contstraints: { format: 'php' },
    via: [:get, :post, :patch, :delete]
end
