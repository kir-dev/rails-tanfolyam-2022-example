# == Schema Information
#
# Table name: acquisitions
#
#  id         :integer          not null, primary key
#  year       :integer
#  library_id :integer          not null
#  book_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_acquisitions_on_book_id     (book_id)
#  index_acquisitions_on_library_id  (library_id)
#

class Acquisition < ApplicationRecord
  belongs_to :library
  belongs_to :book
end
