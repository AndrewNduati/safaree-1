Rails.application.routes.draw do
  
  get '/', to: 'experiences#search'
  
  resources :bookings
  resources :users

  get '/bookings/new' => 'bookings#new', :as => :new
  
	resources :experiences do 
	 # Activities belong to CERTAIN experiences....

	 	resources :activities
	end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # resources :users do
		# # member do  	# A member depends on the id presented to generate a view. 
		# # 			# So it acts on a single object. In this case, the single merchant
		# # 	# get :tours
		# # end
  #  end
end
