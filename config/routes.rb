Rails.application.routes.draw do

  resources :expenses
  resources :incomes
  resources :expense_categories
  resources :income_categories
  devise_for :users

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
