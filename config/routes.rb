Rails.application.routes.draw do
  root 'exams#home'
  get 'exams/question'
  get 'exams/result'
  post 'exams/result'
end
