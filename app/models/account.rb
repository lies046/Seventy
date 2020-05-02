class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :menus, dependent: :destroy
  mount_uploader :image, AccountUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
