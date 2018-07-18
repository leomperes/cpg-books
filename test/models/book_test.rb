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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
