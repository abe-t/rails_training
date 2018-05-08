Rails.application.routes.draw do
  # get 'members/new'
  # get 'members/show/:id',to:'members#show',as:'members/show'
  # get 'members/index'
  # get 'members/:id/edit/',to:'members#edit'
  # post 'members/create',to:'members#create'
  # delete 'members/:id/delete',to:'members#delete'
  # patch 'members/:id/update',to:'members#update'
  resources :members
  root "members#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
