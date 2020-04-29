class Shop < ApplicationRecord
  belongs_to :account, optional: true
end
