Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  # get 'faq', to: 'welcome#index'
  # get 'faq/:faq_id', to: 'welcome#index'
  resources :faq, only: %i[index show]
end
