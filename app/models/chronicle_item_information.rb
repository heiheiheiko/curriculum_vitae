class ChronicleItemInformation < ActiveRecord::Base
  belongs_to :information
  belongs_to :chronicle_item
end
