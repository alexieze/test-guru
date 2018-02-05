class ModifyColumnCorrectAndTitleForAnswer < ActiveRecord::Migration[5.1]
  def up
    change_column :answers, :title, :string, null: false
    change_column :answers, :correct, :boolean, default: 0
    change_column :answers, :question_id, :integer, null: false
    change_column :answers, :published, :boolean, default: 0
  end
end
