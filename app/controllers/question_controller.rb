class QuestionController < ApplicationController
  def new
  end

  def create
    @question = Exam.new(params[:question])
    @question.save
  end
end
