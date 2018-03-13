class CreateTestsOfUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :tests_of_users, id:false do |t|
      t.integer :test_id, null: false
      t.integer :user_id, null: false
      t.boolean :active, default: 0
      t.timestamps
    end
  end
end
