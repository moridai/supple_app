Rails.application.routes.draw do
  root 'static_pages#home'
  get 'exams/question'
  post 'exams/question'
  get 'exams/answer'
  post 'exams/answer'
  get 'exams/result'
  post 'exams/result'
  get 'question/new'
  post 'question/create'
end
