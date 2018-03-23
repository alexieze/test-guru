class User < ApplicationRecord

  has_and_belongs_to_many :tests, join_table: "tests_of_users"
  has_many :author_tests, class_name: "Test"

  scope :tests, -> ( level ) { joins(:tests_of_users).where('level=?', level) }

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, with: /^[A-Za-z0-9]+$/
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
