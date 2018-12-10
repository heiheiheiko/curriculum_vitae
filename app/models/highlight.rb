class Highlight < ChronicleItem
  include Personal

  # decorator
  def card_sub_title
    nil
  end

  def self.address_icon
    'map-marker-alt'
  end
end
