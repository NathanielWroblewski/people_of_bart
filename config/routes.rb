PeopleOfBart::Application.routes.draw do
  root 'people#index'

  resources :people, only: [:index, :new, :create]

  get 'people/wall-of-shame', to: 'people#wall_of_shame', as: :wall_of_shame
end
