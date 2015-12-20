class Job < ChronicleItem
  enum position: [ :web_developer, :software_developer, :junior_software_developer ]
  enum employment: [ :intern, :student_assistant, :bachelor, 'employee' ]

  def color_class
    'success'
  end
end
