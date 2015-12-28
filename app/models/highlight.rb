class Highlight < ChronicleItem
  def card_sub_title
    nil
  end

  def self.color_class
    'danger'
  end

  def self.address_icon
    'map-marker'
  end

  def self.filter_icon
    'home'
  end
end
