class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory
  validates :user, presence: true
  scope :last_5, ->{order(‘created_at DESC’).limit(5)}
  scope :item_presence, ->{where(inventory_id: false)} 
end
