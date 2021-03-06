Rails.application.routes.draw do
  resources :questions
  resources :students
  resources :teachers
  resources :student_questions

  get '/student_auth', to: 'application#current_user'
  get '/teacher_auth', to: 'application#current_user'

  post '/teacher_auth', to: 'teacher_auth#create'
  post '/student_auth', to: 'student_auth#create'

end
