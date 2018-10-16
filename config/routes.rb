Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'libraries#index'
  
  resources :libraries do
    resources :cabinets do
      resources :bookshelves do
        resources :books
      end  
    end
  end
  resources :cabinets
  resources :bookshelves
  resources :books
end
