# == Schema Information
#
# Table name: libraries
#
#  id          :integer          not null, primary key
#  name        :string
#  nationality :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Library < ApplicationRecord
  has_many :acquisitions
  has_many :books, through: :acquisitions
end
