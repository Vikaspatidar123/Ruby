Rails.application.routes.draw do

  root 'students#index'
  resources :students do
    member do
      get :delete
    end
  end

   


  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'
  # get 'students/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
