Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Spree::Core::Engine.add_routes do

  namespace :admin do
    resources :taxonomies do  
		resources :taxons do
		  resources :taxon_certificates, :path => "certificates" do
			collection do
			  post :update_positions
			end
		  end
		end
	end
  end

  namespace :admin do
    resources :taxonomies do  
		resources :taxons do
		  resources :taxon_interiors, :path => "interiors" do
			collection do
			  post :update_positions
			end
		  end
		end
	end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :taxonomies do
		resources :taxons do	  
			resources :taxon_certificates, :path => "certificates"
		end
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :taxonomies do
		resources :taxons do	  
			resources :taxon_interiors, :path => "interiors"
		end
      end
    end
  end
  
end