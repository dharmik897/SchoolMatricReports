Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'school_details#index'
  resources :school_details do
    get 'year_and_school'
    get 'compare_schools'
  end
  namespace :api do
    namespace :v1 do
      resources :matrics_details, only: %i[index new show create]
      resources :school_details, only: %i[index new show create]
    end
  end
end
