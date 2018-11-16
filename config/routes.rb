Rails.application.routes.draw do
	namespace :api do
	  namespace :v1 do
	    resources :coins

	    get '/coins/total' => 'coins#total'
	  end
	end
  
end
