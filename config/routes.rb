Rails.application.routes.draw do
  #get 'twets/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'twets#new'
  resources :twets do
    collection do
      post :confirm
    end
  end
end
