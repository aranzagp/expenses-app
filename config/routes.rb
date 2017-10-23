Rails.application.routes.draw do

  get 'expense/new'

	root 'static_pages#home'
	
  get 'static_pages/home'

  get 'static_pages/expenses'

  get 'static_pages/income'

  get 'static_pages/balance'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
