# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/expenses'

  get 'static_pages/income'

  get 'static_pages/balance'

  resources :expenses

  resources :incomes

  resources :categories
end
