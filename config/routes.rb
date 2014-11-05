Deployer::Application.routes.draw do
  resources :repositories


  resources :deploy_tasks


  resources :projects
  resources :issues
  resources :stages
  resources :commands
  devise_for :users
end
