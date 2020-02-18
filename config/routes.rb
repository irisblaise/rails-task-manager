Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'taks#new', as: :new_tasks
  post 'tasks', to: 'tasks#create'

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
