class Author < ApplicationRecord
  # Model associations:
  has_and_belongs_to_many :books

  # Model validations:
  validates :first_name, uniqueness: { scope: :last_name }
end
