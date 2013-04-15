Company::Application.routes.draw do
  
  resources :teams do 
  	resources :employees, only: [:index]
  end
  resources :employees
  resources :employee_profiles


end
