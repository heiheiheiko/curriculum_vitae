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
      'a'
    when :technology
      'b'
    when :area
      'c'
    when :conditions
      'd'
    end
  end
end
