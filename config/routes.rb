Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root to: "pages#home"
  resources :students
  resources :bookings, only: [:destroy, :show, :index]
  resources :teachers do
    resources :bookings, only: [:create, :new]
  end

end
