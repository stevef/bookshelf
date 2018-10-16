class Cabinet < ApplicationRecord
  belongs_to :library, inverse_of: :cabinets
  has_many :bookshelves, inverse_of: :cabinet
  has_many :books, through: :bookshelves
               
  validates :name,
            presence: true,
            inclusion: { in: Library::LIBRARY_SECTIONS }
            
  validate :validate_library_section_count
  
  private
  
  def validate_library_section_count
    Cabinet.where(name: self.name).count > 10
  end
end
