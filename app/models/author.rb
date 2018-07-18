# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
  # Model associations:
  has_and_belongs_to_many :books

  # Model validations:
  validates :first_name, uniqueness: { scope: :last_name }

  # Model concerns inclusions:
  include Nameable
end
