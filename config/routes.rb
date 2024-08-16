Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/swagger'
  mount Rswag::Ui::Engine => '/swagger'
  
  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
end