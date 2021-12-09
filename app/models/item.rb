class Item < ApplicationRecord
  belongs_to :base_item
  belongs_to :user
end
