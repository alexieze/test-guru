class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :test_id
      t.boolean :published
      t.timestamps
    end
  end
end
