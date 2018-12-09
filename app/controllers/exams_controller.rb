class ExamsController < ApplicationController
  def home
  end

  def question
    @exam = Exam.all.first
  end

  def result
    #questionビューで回答された値を@examに代入して@answer_answerと照合してif文で正誤出したい
    @exam = Exam.all.first
  end
end
