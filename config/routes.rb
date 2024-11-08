Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :qr_code_accesses, only: [:create, :index] do
    member do
      post :add_comment
    end
  end
  root 'qr_code_accesses#index' # Se essa for uma rota válida da sua API

  match "*path", to: "application#preflight", via: :options

  def preflight
    head :ok
  end
end
