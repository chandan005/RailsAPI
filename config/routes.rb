Rails.application.routes.draw do

  resources :access_points
  resources :taxis

  resources :skybus_t4s do
  	collection do
  		get 'timeQueries'
  	end
  end

  resources :skybus_t3s do
  	collection do
  		get 'timeQueries'
  	end
  end

  resources :skybus_t1s do
  	collection do
  		get 'timeQueries'
  		get 'allTimeQueries'
  	end
  end

  

  resources :internationals

  resources :domestics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
