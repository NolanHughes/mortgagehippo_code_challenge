Rails.application.routes.draw do
	namespace :api do
	  namespace :v1 do
	  	get '/coins/total' => 'coins#total'
	    resources :coins	    
	  end
	end
  
end
