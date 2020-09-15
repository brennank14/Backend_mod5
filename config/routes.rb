Rails.application.routes.draw do
  #resources :student_questions
  resources :questions
  resources :students
  resources :teachers

  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
    end
  end
end
