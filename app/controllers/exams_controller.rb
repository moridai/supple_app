class ExamsController < ApplicationController
  def home
  end

  def question
    # 実装アイデア
    # データベースの全データの中からランダムに2レコードを取得する
    # 取得したレコードを@exams変数に入れる
    # @exam変数に取得したレコードのうち1番目のレコードを入れる
    # 1問目は1番目のレコードの問題と選択肢を表示する
    # 1問目のresult画面でquestionアクションを呼び出す時にどうにかして2番目のレコードを@exam変数に入れる
    # 2問目を表示する際は2番目のレコードの問題と選択肢を表示する
    @exams = Exam.all.limit(2)
    if params[:next_question] then
      @exam = @exams[1]
    else
      @exam = @exams[0]
    end
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
