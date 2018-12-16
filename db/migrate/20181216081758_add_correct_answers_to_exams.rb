class AddCorrectAnswersToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :correct_answers, :integer
  end
end
