class ChangeColumnQuestion < ActiveRecord::Migration[5.1]
  def up
    change_column :questions, :title, :string, null: false
    change_column :questions, :body, :text, null: false
    change_column :questions, :test_id, :integer, null: false
    change_column :questions, :published, :boolean, default: 0
  end
end
