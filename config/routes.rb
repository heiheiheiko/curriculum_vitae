Rails.application.routes.draw do
  root to: 'applicants#show'
  get '/:locale' => 'applicants#show'

  scope "(:locale)", locale: /en|de/ do
    resources :applicants, only: [:show]
  end

  namespace :api do
    namespace :v1 do
      resources :applications, only: :show, defaults: { format: :json }
    end
  end
end
