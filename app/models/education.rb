class Education < ChronicleItem
  include Educational

  # decorator
  def card_sub_title
    graduation
  end

  def self.address_icon
    'university'
  end
end
