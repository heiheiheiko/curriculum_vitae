module ChronicleItemDecorator

  def period
    start_date =  I18n.l started_at, format: '%m/%Y'
    end_date = ended_at ? I18n.l(ended_at, format: '%m/%Y') : 'heute'
    "#{start_date} - #{end_date}"
  end

  def ended_at_extended
    ended_at ? ended_at + 1.month : Date.current
  end
end
