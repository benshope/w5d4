Company::Application.routes.draw do
  
  resources :employee_profiles


  resources :teams
  resources :employees

end
