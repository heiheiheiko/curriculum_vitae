class Skill < Information
  has_many :chronicle_item_skills
  has_many :chronicle_items, through: :chronicle_item_skills

  enum information_type: [ :area, :conditions, :technology, :software ]

  # decorator
  def color_class
    self.class.color_class_for(information_type)
  end

  def self.color_class_for(information_type)
    case information_type.to_sym
    when :software
      'bg-teal'
    when :technology
      'bg-indigo'
    when :area
      'bg-deep-orange'
    when :conditions
      'bg-deep-purple'
    end
  end

  def self.accent_color_class_for(information_type)
    case information_type.to_sym
    when :software
      'bg-teal-shade-1'
    when :technology
      'bg-indigo-shade-1'
    when :area
      'bg-deep-orange-shade-1'
    when :conditions
      'bg-deep-purple-shade-1'
    end
  end
end
