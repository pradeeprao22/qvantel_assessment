Rails.application.routes.draw do
  
resources :customers, defaults: { format: :json }
resources :payments, defaults: { format: :json }
resources :invoices, defaults: { format: :json }

end
