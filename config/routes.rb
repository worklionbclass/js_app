Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  get 'posts/index'
  get 'posts/:id/show' => "posts#show"
  root "home#index"
  get "home/selector"
  get "home/event"
  get "home/bootstrap"
  get "home/sweet"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
