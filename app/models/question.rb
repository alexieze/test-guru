class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :title, presence: true
  validates :body, presence: true
  validates :answers, length: { maximum: 4 }
end
