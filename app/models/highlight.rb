class Highlight < ChronicleItem

  # decorator
  def card_sub_title
    nil
  end

  def self.color_class
    'info'
  end

  def self.address_icon
    'map-marker'
  end

  def self.filter_icon
    'home'
  end
end
