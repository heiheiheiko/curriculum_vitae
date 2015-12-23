class Skill < Information
  has_many :chronicle_item_informations
  has_many :chronicle_items, through: :chronicle_item_informations
end
