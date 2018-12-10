class Job < ChronicleItem
  include Professional

  enum position: [ :web_developer, :software_developer, :junior_software_developer ]
  enum employment: [ :intern, :student_assistant, :bachelor, 'employee' ]

  # decorator
  def card_sub_title
    I18n.t(employment, scope: 'enums.chronicle_item.employment')
  end

  def self.address_icon
    'building'
  end

  def self.address_icon_font
    'far'
  end
end
