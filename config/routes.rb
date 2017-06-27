Rails.application.routes.draw do


  devise_for :users, :controllers => { registrations: 'registrations' }
 # devise_for :users
#  devise_for :users
  
  root 'main#home'
  get '/main/mypage' => 'main#mypage'
  get '/posts/designer' => 'posts#designer'
  
  get '/posts/show/:post_id' =>'posts#show'
  get '/posts/succ/:post_id' => 'posts#succ', as:'post_succ'
  patch '/posts/succc/:post_id' => 'posts#succc', as:'post_succc'

  get '/posts/new' => 'posts#new'
  
  post '/posts/create' => 'posts#create' ,as:'post_create'
  
  get '/posts/destroy/:post_id' => 'posts#destroy'
  
  get '/posts/edit/:post_id' => 'posts#edit', as:'post_edit'
  
  patch '/posts/update/:post_id' => 'posts#update', as:'post_update'
  
  get '/main/home' => 'main#home'
  get '/main/developer' =>'main#developer'
  get '/main/complete' =>'main#complete'
  get '/main/register' =>'main#register'
  
  post '/comments' => 'comments#create', as:'comments'
  delete '/comments/:id' => 'comments#destroy', as:'comment'
  
  get 'comments/scout/:comment_id'=>'comments#scout', as:'scout'
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
