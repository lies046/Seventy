class Menu < ApplicationRecord
  mount_uploader :image, MenuUploader
  belongs_to :account
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
end