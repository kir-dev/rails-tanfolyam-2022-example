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

class Book < ApplicationRecord
  belongs_to :author
  has_many :acquisitions, dependent: :destroy
  has_many :libraries, through: :acquisitions

  def full_description
    "#{author.name}: #{title}"
  end

  def numbers_in_library(library)
    Acquisition.where(book_id: id, library: library).count
  end

end
