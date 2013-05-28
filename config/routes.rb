Myh::Application.routes.draw do  

  resources :immunizations
  resources :visit_lab_test_xrefs
  resources :allergies
  resources :current_medications
  resources :contact_infos
  resources :insurance_infos

  # get "users/create"
  # get "users/edit"
  # get "users/update"
  # get "users/destroy"
  root to: "static_pages#home"
  resources :sessions, only: [:new, :create, :destroy]
  get "/help", to: "static_pages#help"
  get "/contact", to: "static_pages#contact"
  # match "/signup", to: "users#new", via: :get
  match "/signin", to: "sessions#new", via: :get
  # match "/signout", to: "sessions#destroy", via: :delete
  resources :lab_tests
  resources :patients
  resources :reg_questions
  resources :reg_answers
  resources :users
  resources :vital_signs
  resources :visits
  # get 'patients/find_patient', to: 'patients#find_patient', as: 'find_patient'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
