class Book < ApplicationRecord
  validates :title, :author, :editorial, :presence => true
  validates :edition, :publication_year, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
end
