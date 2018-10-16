class Bookshelf < ApplicationRecord
  belongs_to :cabinet, inverse_of: :bookshelves
  has_many :books, inverse_of: :bookshelf
                 
  validates_presence_of :public_id, numericality: true
  
  before_save :validate_cabinet_count
                 
  private
                 
  def validate_cabinet_count
    return false unless Bookshelf.where(cabinet_id: self.cabinet_id).count <= 20  
  end
end
                 