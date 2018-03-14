class User < ApplicationRecord
  def tests(level)
    Test.joins('LEFT JOIN  tests_of_users ON tests.id = tests_of_users.test_id').where('level=?', level)
  end
end
