Rails.application.routes.draw do
  
	namespace :api do
	  namespace :v1 do
	  	get '/coins/total' => 'coins#total'
	    resources :coins, only: [:index, :show, :create, :destroy]

	    resources :transactions, only: [:index, :show, :create]   
	  end
	end
  
end
