# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#

Rails.application.routes.draw do
  get 'animals/index'

  get 'animals/edit'

  get 'animals/new'

  get 'animals/show'

  get 'sellers/index'

  get 'sellers/edit'

  get 'sellers/show'

  get 'sellers/new'

  root "session#new"
  get "/users/edit" => 'users#edit', :as => "edit_user"
  resources :users, :except => [:edit]

  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"
end
