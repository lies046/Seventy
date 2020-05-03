class CartItem < ApplicationRecord
  belongs_to :menu
  belongs_to :cart
  validates :quantity, numericality: { greater_than: 0}
end
