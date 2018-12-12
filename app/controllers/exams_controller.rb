class ExamsController < ApplicationController
  def home
  end

  def question
    @exams = Exam.all.limit(2)
    if params[:next_question] then
      @exam = @exams[1]
    else
      @exam = @exams[0]
    end
  end

  def result
    @examid = params[:id]
    @exam = Exam.find_by(id: @examid)
    @answer = @exam.answer
    if @answer == params[:select] then
      @msg = '正解'
    else
      @msg = '不正解'
    end
  end
end
