class TimeRange
  I18N_SCOPE = self.name.to_s.underscore

  attr_reader  :range_in_months

  def initialize(start_date = nil, end_date = nil, range_in_months = nil)
    @start_date = start_date
    @end_date = end_date
    @range_in_months = range_in_months || init_range_in_months
  end

  def period_in_words
    years_in_words = translation_for(years, 'years')
    months_in_words = translation_for(months, 'months')
    [years_in_words, months_in_words].compact.join("#{I18n.t(:and, scope: I18N_SCOPE)}")
  end

  def period_as_dates
    start_date =  I18n.l @start_date, format: '%m/%Y'
    end_date = @end_date ? I18n.l(@end_date, format: '%m/%Y') : I18n.t(:today, scope: I18N_SCOPE)
    "#{start_date} - #{end_date}"
  end

  def +(other)
    TimeRange.new(nil, nil, @range_in_months + other.range_in_months)
  end

  def range_in_years
    @range_in_months.to_f / 12
  end

  private
  def years
    @range_in_months / 12
  end

  def months
    @range_in_months % 12
  end

  def init_range_in_months
    end_date = (@end_date || Date.current) + 1.month
    (end_date.year * 12 + end_date.month) - (@start_date.year * 12 + @start_date.month)
  end

  def translation_for(value, plural_locale)
    case
    when value == 1
      "#{value} #{I18n.t(plural_locale.chop, scope: I18N_SCOPE)}"
    when value > 1
      "#{value} #{I18n.t(plural_locale, scope: I18N_SCOPE)}"
    else
      nil
    end
  end
end
