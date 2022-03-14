# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  isbn       :string
#  year       :integer
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#

require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
