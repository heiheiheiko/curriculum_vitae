module Professional
  extend ActiveSupport::Concern

  COLOR_CLASS = 'text-red'
  COLOR_KEY = 'red'
  ICON = 'code'

  def color_class
    COLOR_CLASS
  end

  def color_key
    COLOR_KEY
  end

  def icon
    ICON
  end

  included do
    def self.color_class
      COLOR_CLASS
    end

    def color_key
      COLOR_KEY
    end

    def self.icon
      ICON
    end
  end
end
