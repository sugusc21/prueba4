class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work
  validates :serial, numericality: { greater_than: 0 }
  validates :serial, uniqueness: true
  validates :size, numericality: { greater_than: 0 }
  scope :item_bigger_than_X, ->(size) {where (size > 5)}
end
