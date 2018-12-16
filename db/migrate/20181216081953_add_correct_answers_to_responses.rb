class AddCorrectAnswersToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :correct_answers, :integer
  end
end
