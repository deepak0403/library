Rails.application.routes.draw do
  resources :invoices do  
     collection do
     match 'search' => 'invoices#search', via: [:get, :post], as: :search
end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'invoices#index'
end
