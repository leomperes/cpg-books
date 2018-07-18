class Book < ApplicationRecord
  # Model associations:
  has_and_belongs_to_many :authors

  # Attributes:
  enum format: [ :hardcover, :softcover, :digital ]

  # Model validations:
  validates :format, presence: true
end
