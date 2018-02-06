class ChangeColumnUser < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :username, :string, null: false
    change_column :users, :email, :string, null: false
    change_column :users, :password, :string, null: false
    change_column :users, :block, :boolean, default: 0
  end
end
