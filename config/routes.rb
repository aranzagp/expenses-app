Rails.application.routes.draw do


  get 'categories/new'

  #get 'incomes/new'

	root 'static_pages#home'
	
  get 'static_pages/home'

  get 'static_pages/expenses'

  get 'static_pages/income'

  get 'static_pages/balance'

  get '/expenses/new',  to: 'expenses#new'

  post '/expenses/new',  to: 'expenses#create'

  post '/incomes/new',  to: 'incomes#create'

  resources :expenses

  resources :incomes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
