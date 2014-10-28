Deployer::Application.routes.draw do
  resources :projects
  resources :issues
  resources :stages
  resources :commands
  devise_for :users
end
