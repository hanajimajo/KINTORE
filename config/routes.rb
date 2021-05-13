Rails.application.routes.draw do

  root :to => "homes#top"
  devise_for :users

  resources :users, only: [:show, :edit, :update, :destroy]

  resources :trainings, only: [:index,:new, :show, :edit, :create, :update, :destroy] do
    get 'bookmark'
    get 'ranking'
  end

end
