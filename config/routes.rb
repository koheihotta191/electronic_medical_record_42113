Rails.application.routes.draw do
  root to: 'patients#index'

  resources :patients do
    member do
      post 'add_diagnosis'
      post 'remove_diagnosis'
    end
  end
  resources :diagnoses
end