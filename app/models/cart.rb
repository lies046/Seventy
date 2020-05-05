class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :menus, through: :cart_items
  validates :takeout_time, presence: true, on: :pay
end
