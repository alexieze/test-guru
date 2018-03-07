class ChangeColumnTest < ActiveRecord::Migration[5.1]
  def up
    change_column :tests, :title, :string, null: false
    change_column :tests, :level, :integer, default: 0
    change_column :tests, :category_id, :integer, null: false
    change_column :tests, :published, :boolean, default: 0
  end
end
