Rails.application.routes.draw do
  root to: 'applicants#show'

  namespace :api do
    namespace :v1 do
      resources :applications, only: :show, defaults: { format: :json }
    end
  end
end
