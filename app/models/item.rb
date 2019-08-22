class Item < ApplicationRecord
  belongs_to :department

  validates :price, numericality: true
end
