Rails.application.routes.draw do
    devise_for :users

    get '/secret', to: 'pages#secret', as: :secret

    root to: 'sessions#home'



    get '/users/sign_in' => 'users#sign_in', as: :sign_in

    post '/users/sign_in' => 'devise/sessions#create', as: :user

    delete '/users/sign_out' => 'devise/sessions#destroy', as: :sign_out
    
  end

  # devise_scope :user do get "/some/route" => "some_devise_controller"
  # end
# GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session
# POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session
# DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password
# GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password
# GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password
# PATCH  /users/password(.:format)      devise/passwords#update
# PUT    /users/password(.:format)      devise/passwords#update
# POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration
# GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration
# GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration
# GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration
# PATCH  /users(.:format)               devise/registrations#update
#  PUT    /users(.:format)               devise/registrations#update
# DELETE /users(.:format)               devise/registrations#destroy
# POST   /users(.:format)               devise/registrations#create
# root
# GET    /                              users#home
# home
# GET    /users/home(.:format)          users#home
# sign_in
# GET    /users/sign_in(.:format)       users#sign_in
