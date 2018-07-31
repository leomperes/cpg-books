# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  title        :string
#  release_date :date
#  base_price   :decimal(5, 2)
#  format       :integer          default("hardcover"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

# title:string release_date:date base_price:decimal format:integer

class Book < ApplicationRecord
  # Model associations:
  has_and_belongs_to_many :authors

  # Attributes:
  enum format: [ :hardcover, :softcover, :digital ]

  # Model validations:
  validates :format, presence: true
  validates :base_price,
    presence: { message: I18n.t('models.validations.blank_if_date_2_months') },
    if: Proc.new { |book| book.release_date > 2.months.ago }

  # Model concerns inclusions:
  include Authorable

  # Model scopes:
  scope :by_year, -> (year) { where("CAST(strftime('%Y', release_date) AS INT) = ?", year) }
end
