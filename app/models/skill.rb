class Skill < Information
  has_many :chronicle_item_skills
  has_many :chronicle_items, through: :chronicle_item_skills

  enum information_type: [ :keyword, :conditions, :technology, :software ]

  # decorator
  def color_class
    self.class.color_class_for(information_type)
  end

  def self.color_class_for(information_type)
    case information_type.to_sym
    when :software
      'bg-software js-software'
    when :technology
      'bg-technology js-technology'
    when :keyword
      'bg-keyword js-keyword'
    when :conditions
      'bg-conditions js-conditions'
    end
  end

  def self.accent_color_class_for(information_type)
    case information_type.to_sym
    when :software
      'bg-software-shade-1'
    when :technology
      'bg-technology-shade-1'
    when :keyword
      'bg-keyword-shade-1'
    when :conditions
      'bg-conditions-shade-1'
    end
  end
end
