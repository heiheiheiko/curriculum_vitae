class ChronicleItemSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :chronicle_item

  enum experience: [ :rare, :frequent, :regular ]

end
