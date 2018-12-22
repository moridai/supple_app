class QuestionController < ApplicationController
  def new
    @question = Exam.new
  end

  def create
  end
end
