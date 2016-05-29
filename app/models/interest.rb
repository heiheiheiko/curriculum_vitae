class Interest < Information
  enum information_type: [ :personal, :professional ]

  def extend_decorators
    case information_type
    when "personal"
      extend Personal
    when "professional"
      extend Professional
    end
  end
end
