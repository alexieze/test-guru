class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.integer :category_id
      t.boolean :published
      t.timestamps
    end
  end
end
