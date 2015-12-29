class Education < ChronicleItem
  def card_sub_title
    graduation
  end

  def self.color_class
    'success'
  end

  def self.address_icon
    'university'
  end

  def self.filter_icon
    'graduation-cap'
  end
end
