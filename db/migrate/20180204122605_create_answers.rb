class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :title
      t.integer :correct
      t.integer :question_id
      t.boolean :published
      t.timestamps
    end
  end
end
