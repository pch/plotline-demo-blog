Rails.application.routes.draw do
  mount Plotline::Engine, at: "/admin"

  get 'search', to: 'posts#search', as: :search

  get '/photos/:slug', to: 'photos#show', as: :photo
  get '/photos', to: 'photos#index', as: :photos

  get '/posts/:slug', to: 'posts#show', as: :post
  get '/posts', to: 'posts#index', as: :posts

  get '/:slug', to: 'pages#show', as: :page

  root to: 'posts#index'
end
