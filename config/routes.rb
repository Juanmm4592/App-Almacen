Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/create'
  get 'products/update'
  get 'products/destroy'
  get 'suppliers/index'
  get 'suppliers/new'
  get 'suppliers/edit'
  get 'suppliers/create'
  get 'suppliers/update'
  get 'suppliers/destroy'
  get 'clients/index'
  get 'clients/new'
  get 'clients/edit'
  get 'clients/create'
  get 'clients/update'
  get 'clients/destroy'
  get 'categories/index'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/create'
  get 'categories/update'
  get 'categories/destroy'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  
  resources :categories, except: [:show]
  resources :clients, except: [:show]
  resources :suppliers, except: [:show]

  resources :products
  resources :sales
  resources :warehouses

  get 'buscador_proveedor/:termino', to: 'suppliers#buscador'
  post '/add_sup_almacen/', to: 'warehouses#add_proveedor'
  get 'buscador_productos/:termino', to: 'products#buscador'
  post 'add_item_venta', to: 'sales#add_item'
  get 'buscador_clientes/:termino', to: 'clients#buscador'
  post '/add_cliente_venta/', to: 'sales#add_cliente'
  post 'add_item_almacen', to: 'warehouses#add_item'
  get 'buscador_proveedores/:termino', to: 'suppliers#buscador'
  post '/add_proveedor_entrada/', to: 'warehouses#add_proveedor'
  post '/search', to: 'search#results'

end
