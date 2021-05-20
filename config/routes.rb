Rails.application.routes.draw do

  root :to => "homes#top"
  devise_for :users

  resources :users, only: [:show, :edit, :update] do
    patch 'withdraw'
  end

  resources :trainings, only: [:index,:new, :show, :edit, :create, :update, :destroy] do
    get 'bookmark'
    get 'ranking'
    resource :favorites, only: [:create, :destroy]
    resource :bookmarks, only: [:create, :destroy]
  end

  devise_for :admins

  resources :articles, only: [:index, :new, :show, :edit, :create, :update, :destroy]

end
