class ChangeColumnCategory < ActiveRecord::Migration[5.1]
  def up
    change_column :categories, :title, :string, null: false
    change_column :categories, :description, :text, null: false
    change_column :categories, :published, :boolean, default: 0
  end
end
