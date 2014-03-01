PeopleOfBart::Application.routes.draw do
  root 'people#index'

  resources :people, except: :show

  get 'people/wall-of-shame', to: 'people#wall_of_shame', as: :wall_of_shame
  get 'admin/edit', to: 'people#edit'
end
