class Test < ApplicationRecord

  belongs_to :category
  has_many :questions
  has_and_belongs_to_many :users, join_table: "tests_of_users"
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  def Test.name_of_tests(category)
    Test.joins('LEFT JOIN categories ON categories.id=tests.category_id').where("categories.title LIKE ?", "%#{category}%")
  end
end
