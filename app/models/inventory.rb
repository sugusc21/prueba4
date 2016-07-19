class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work
  validates :serial, numericality: { greater_than: 0 }
  validates :serial, uniqueness: true
  validates :size, numericality: { greater_than: 0 }
end
