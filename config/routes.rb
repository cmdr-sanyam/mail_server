Rails.application.routes.draw do
  resources :contacts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get "smtpserver" => "mailserver#smtp_server"

  # Defines the root path route ("/")
  # root "articles#index"
end
