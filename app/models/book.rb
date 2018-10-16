class Book < ApplicationRecord
  belongs_to :bookshelf, inverse_of: :books

  validates_presence_of :title, :language, :isbn
  validates_numericality_of :page_count, greater_than: 0
end
