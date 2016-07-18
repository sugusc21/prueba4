class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :serial, numericality: { greater_than: 0 }
  validates :serial, uniqueness: true
end
