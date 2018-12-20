class Skill < Information
  has_many :chronicle_item_skills
  has_many :chronicle_items, through: :chronicle_item_skills

  has_many :applicant_skills
  has_many :applicants, through: :applicant_skills

  enum information_type: [ :keyword, :soft, :technology, :software ]

  # decorator
  def color_class
    self.class.color_class_for(information_type)
  end

  def accent_color_class
    self.class.accent_color_class_for(information_type)
  end

  def self.color_class_for(information_type)
    case information_type.to_sym
    when :software
      'bg-software js-software'
    when :technology
      'bg-technology js-technology'
    when :keyword
      'bg-keyword js-keyword'
    when :soft
      'bg-soft js-soft'
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
    when :soft
      'bg-soft-shade-1'
    end
  end
end
