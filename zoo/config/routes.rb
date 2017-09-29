Rails.application.routes.draw do
  root to: 'animals#index'

  get '/animals', to: 'animals#index', as: 'animals' # animals_path

  get '/animals/new', to: 'animals#new', as: 'new_animal' # new_animal_path

  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal' # edit_animal_path

  get '/animals/:id', to: 'animals#show', as: 'animal' # animal_path

  post '/animals', to: 'animals#create', as: 'create_animal' # create_animal_path

  patch '/animals/:id/update', to: 'animals#update', as: 'update_animal' # update_animal_path

  delete '/animals/:id/destroy', to: 'animals#destroy', as: 'delete_animal' # delete_animal_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
