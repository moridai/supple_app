class ExamsController < ApplicationController
  def home
  end

  def question
    @exams = Exam.all.order("RANDOM()").limit(2)
  end

  def result
    @answer = Exam.all.first.answer
    if @answer == params[:select] then
      @msg = '正解'
    else
      @msg = '不正解'
    end
  end
end
