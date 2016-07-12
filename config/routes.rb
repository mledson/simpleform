require 'api_constraints'

StudentApi::Application.routes.draw do
#  devise_for :classrooms
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
           constraints: ApiConstraints.new(verision: 1, default: true) do
      resources :students, :only => [:show, :create, :update, :destroy]
    end
  end
end
