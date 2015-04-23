Rails.application.routes.draw do
  # devise_for :users

  mount API::Root => '/'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end

