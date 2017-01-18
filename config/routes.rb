Mpcm::Engine.routes.draw do
  scope '/' do
    resources :articles do
      resources :images, only: [:create]
    end
  end
end
