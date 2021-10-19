Rails.application.routes.draw do
  #resources :articles
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/create'
  # get 'articles/edit'
  # get 'articles/update'
  # get 'articles/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles', to: 'articles#index', as: :articles
  post 'articles', to: 'articles#create'
  get 'articles/new', to: 'articles#new', as: :newarticle
  get 'articles/:id/edit', to: 'articles#edit', as: :ediarticle
  get 'articles/:id', to: 'articles#show', as: :article
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy'
end
