class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.boolean :published, default: 0
      t.timestamps
    end
  end
end
