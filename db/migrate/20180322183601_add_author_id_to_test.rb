class AddAuthorIdToTest < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :user, foreign_key: true, after: :published
  end
end
