Login::Application.routes.draw do |map|

  resources :i_cs

  resources :clientes

  resources :empresas

  resources :telefono_empresa_clientes

  resources :orden_de_trabajos

  resources :i_sms

  resources :a_us

  resources :ii_as

  resources :telefono_personas

  resources :telefono_proveedors

  resources :ii_is

  resources :salida_materials

  resources :em_is

  resources :odc_is

  resources :odc_rs

  resources :r_is

  resources :actividads

  resources :inventarios

  resources :instancia_items

  resources :requisicions

  resources :entrada_materials

  resources :fp_odcs

  resources :cheques

  resources :efectivos

  resources :orden_de_compras

  get "home/index"

  resources :tipo_items

  resources :modelos

  resources :seccions

  resources :proveedors

  resources :unidads
  
  resources :items

  resources :herramienta

  resources :cargos

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  # root :to => "personas#show"
  resources :user_sessions

  resources :users

  resources :personas

  match "bodega"=> 'home#bodega'
  
  match "venta"=> 'home#venta'
  
  match "adc"=> 'home#adc'
  
  match "soporte"=> 'home#soporte'  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "personas#index"
  #root :to => "homes#show", :id => '1'
  root :to => "home#index" 

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
