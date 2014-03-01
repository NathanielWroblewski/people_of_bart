PeopleOfBart::Application.routes.draw do
  root 'people#index'

  resources :people, only: [:index, :new, :create]
end
