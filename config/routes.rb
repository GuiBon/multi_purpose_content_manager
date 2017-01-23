Mpcm::Engine.routes.draw do
  scope '/' do
    get '/articles/:id/edit_images', to: 'articles#edit_images', as: 'edit_images_article'
    resources :articles do
      resources :images, only: [:create, :destroy]
    end
  end
end
