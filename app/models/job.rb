class Job < ChronicleItem
  enum position: [ :web_developer, :software_developer, :junior_software_developer ]
  enum employment: [ :intern, :student_assistant, :bachelor, 'employee' ]

  def color_class
    'success'
  end

  def card_sub_title
    I18n.t(employment, scope: 'enums.chronicle_item.employment')
  end

  def address_icon
    'building-o'
  end
end
