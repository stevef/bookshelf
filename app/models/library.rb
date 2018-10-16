class Library < ApplicationRecord
  has_many :cabinets, inverse_of: :library, dependent: :destroy
  has_many :bookshelves, through: :cabinets
               
  validates_presence_of :name             
               
  LIBRARY_SECTIONS = ['A', 'B', 'C', 'D'].freeze
end
