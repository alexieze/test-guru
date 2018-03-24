class Answer < ApplicationRecord

  belongs_to :question
  scope :correct, -> { where(correct: true) }

  validates :count_replies, on: :create

  private

  def count_replies
    errors.add(:question, 'Too many replies') if question.answers.count > 4
  end
end
