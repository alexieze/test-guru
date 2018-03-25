class Category < ApplicationRecord
  has_many :tests

  scope :sort_asc, -> { order(title: :asc) }
end
