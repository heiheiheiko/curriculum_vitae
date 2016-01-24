class TimeRange
  I18N_SCOPE = self.name.to_s.underscore

  attr_reader  :range_in_month

  def initialize(start_date = nil, end_date = nil, range_in_month = nil)
    @start_date = start_date
    @end_date = end_date
    @range_in_month = range_in_month || init_range_in_month
  end

  def period_in_words
    years_in_words = unless years.zero?
       years_string = years > 1 ? I18n.t(:years, scope: I18N_SCOPE) : I18n.t(:year, scope: I18N_SCOPE)
      "#{years} #{years_string}"
    end
    months_in_words = unless months.zero?
      months_string = months > 1 ? I18n.t(:months, scope: I18N_SCOPE) : I18n.t(:month, scope: I18N_SCOPE)
      "#{months} #{months_string}"
    end

    [years_in_words, months_in_words].compact.join("#{I18n.t(:and, scope: I18N_SCOPE)}")
  end

  def period_as_dates
    start_date =  I18n.l @start_date, format: '%m/%Y'
    end_date = @end_date ? I18n.l(@end_date, format: '%m/%Y') : I18n.t(:today, scope: I18N_SCOPE)
    "#{start_date} - #{end_date}"
  end

  def +(other)
    TimeRange.new(nil, nil, @range_in_month + other.range_in_month)
  end

  private
  def years
    @range_in_month / 12
  end

  def months
    @range_in_month % 12
  end

  def init_range_in_month
    end_date = (@end_date || Date.current) + 1.month
    (end_date.year * 12 + end_date.month) - (@start_date.year * 12 + @start_date.month)
  end
end
