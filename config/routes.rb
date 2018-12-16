Rails.application.routes.draw do
  root 'exams#home'
  get 'exams/question'
  post 'exams/question'
  get 'exams/answer'
  post 'exams/answer'
  get 'exams/result'
  post 'exams/result'
end
