Rails.application.routes.draw do
  resources :users
  resources :comments
  #defult if I write this linke it will search about controller with the same name
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/hi' => 'welcome#index'
  #for make the first page
  root 'welcome#index'
  resources :posts

end
