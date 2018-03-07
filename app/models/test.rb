class Test < ApplicationRecord

  def self.name(category)
    Test.joins(:categories).where("categories.title LIKE ?", category)
  end
end
