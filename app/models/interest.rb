class Interest < Information
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
end
