Rails.application.routes.draw do
root to: 'users#home'

  get '/users/home' => 'users#home', as: :home
  #symbol as allows for use of the following on other pages in app students_url or students_path



end
