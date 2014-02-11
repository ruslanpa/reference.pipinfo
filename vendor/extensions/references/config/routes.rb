Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :references do
    resources :references, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :references, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :references, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
