class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.boolean :block
      t.datetime :registerDate
      t.datetime :lastVisitDate

      t.timestamps
    end
  end
end