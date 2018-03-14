class Test < ApplicationRecord

  def Test.name_of_tests(category)
    Test.joins('LEFT JOIN categories ON categories.id=tests.category_id').where("categories.title LIKE ?", "%#{category}%")
  end
end
