class Menu < ApplicationRecord
  mount_uploader :image, MenuUploader
  belongs_to :account
end