class CreateTableUserTest < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tests do |t|
      t.integer :test_id, null: false
      t.integer :user_id, null: false
      t.boolean :active, default: 0
      t.timestamps
    end
  end
end
