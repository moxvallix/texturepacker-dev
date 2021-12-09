class BaseItemOverride < ApplicationRecord
  belongs_to :base_item
  belongs_to :item
end
