class User < ApplicationRecord
  def tests(level)
    Test.find_by level: level
  end
end
