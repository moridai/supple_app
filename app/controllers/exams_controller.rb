class ExamsController < ApplicationController
  def home
  end


  def question
    if !params[:next_question] then
      @exams = Exam.order("RANDOM()").limit(5)
      @exam = @exams[0]
      @examids = @exams.pluck(:id) #取得したレコードのidを配列にする
      response = Response.new
      response.count = 0
      response.correct_answers = 0
      response.save
      @responseid = response.id
    end

    if params[:responseid] then
      @responseid = params[:responseid]
      response = Response.find(params[:responseid])
      @count = response.count
      @examids = params[:examids].split() #配列の形で取得できておらずエラーが起きている
      @examid = @examids[@count] #回答数に応じて取得したレコードのn番目のidを取得
      @exam = Exam.find(@examid) #取得したidをもとにレコードを取り出す
    end
  end


  def answer
    response = Response.find(params[:responseid])
    response.count += 1
    response.save
    @responsecount = response.count
    @responseid = response.id
    @examids = params[:examids].split() #配列の形で取得できていないので、配列の形で取得されるようにする必要あ

    @examid = params[:examid]
    @exam = Exam.find_by(id: @examid)
    if @exam.answer == params[:select] then
      @msg = '正解！'
      response.correct_answers += 1
      response.save
    else
      @msg = '不正解...'
    end
  end

  def result
    @response = Response.find(params[:responseid])
    @correct_answers = @response.correct_answers
  end

end
