Rails.application.routes.draw do
    devise_for :users

    get '/sessions/secret', to: 'sessions#secret', as: :secret

    root to: 'sessions#home'


    devise_scope :user do

    get '/users/sign_in' => 'devise/sessions#new', as: :sign_in

    post '/users/sign_in' => 'devise/sessions#create'

    get '/users/sign_out' => 'devise/sessions#destroy', as: :sign_out



    get '/users/sign_up' =>     'devise/registrations#new', as: :register

    post '/users' =>     'devise/registrations#create'

    # get '/users/cancel' =>     'devise/registrations#cancel', as: :cancel_reg

    get '/users/edit' => 'devise/registrations#edit', as: :edit_reg

    put '/users' => 'devise/registrations#update', as: :update_reg

    get '/users/destroy' =>     'devise/registrations#destroy', as: :delete_reg

# /users page results in the following flash message so it appears two paths perform same action of registraiton cancellation
#Bye! Your account has been successfully cancelled. We hope to see you again soon.

    get '/users/password/new' => 'devise/password#new', as: :new_pw

    post '/users/password' => 'devise/passwords#create'

    # get '/users/password/edit' => 'devise/passwords#edit', as: :edit_pw

    put '/users/password' => 'devise/passwords#update', as: :update_pw

    end
  end

  # eau- routes that are not working have been deactivated
