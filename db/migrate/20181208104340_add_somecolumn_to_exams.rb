class AddSomecolumnToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :firstselect, :string
    add_column :exams, :secondselect, :string
    add_column :exams, :thirdselect, :string
    add_column :exams, :fourthselect, :string
  end
end
