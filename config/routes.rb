Rails.application.routes.draw do
  #resources :student_questions
  resources :questions
  resources :students
  resources :teachers
  resources :student_questions

  namespace :api do
    namespace :v1 do
      post '/teacher_auth', to: 'teacher_auth#create'
      post '/student_auth', to: 'student_auth#create'
    end
  end
end
