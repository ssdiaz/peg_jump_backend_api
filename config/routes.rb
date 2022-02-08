Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'tiles'       => 'tiles#index'
  get 'boards'      => 'boards#index'
  get 'boards/:id'  => 'boards#show' # resources :boards
  # get 'games/:id'   => 'games#show'
  # get 'games'       => 'games#index'
  # get 'players'     => 'players#index'

  resources :players
  resources :games

  
  ##Project video 2  ~ 25 mins a little before
    # namespace :api do 
  #   namespace :v1 do
  #     resources :titles, only: [:index]
  #   end
  # end

end
