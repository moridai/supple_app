class ExamsController < ApplicationController
  def home
  end

  def question
    @exam = Exam.all.first
  end

  def result
    @answer = Exam.all.first.answer
    if params[@answer] then
      @msg = '正解'
    else
      @msg = '不正解'
    end
  end
end
