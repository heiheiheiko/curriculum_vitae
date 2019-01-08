class Faq < Information
  enum information_type: [ :personal, :professional ]

  def initialize(params)
    super(params)
    case information_type
    when :personal
      extend Personal
    when :professional
      extend Professional
    end
  end

  # decorator
  def avatar_asset
    personal_image = "explorer_40x40.jpg"
    professional_image = "accomplisher_40x40.jpg"
    information_type == "personal" ? personal_image : professional_image
  end

  def html_class
    self.class.html_class_for(information_type)
  end

  def self.html_class_for(information_type)
    case information_type.to_sym
    when :personal
      'js-personal-faq'
    when :professional
      'js-professional-faq'
    end
  end
end
