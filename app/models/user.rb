class User < ApplicationRecord

  has_and_belongs_to_many :tests, join_table: "tests_of_users"
  has_many :author_tests, class_name: "Test"

  # def tests(level)
  #   Test.joins('LEFT JOIN  tests_of_users ON tests.id = tests_of_users.test_id').where('level=?', level)
  # end
end
