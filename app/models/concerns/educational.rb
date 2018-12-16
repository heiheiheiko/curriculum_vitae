module Educational
  extend ActiveSupport::Concern

  COLOR_CLASS = 'text-green'
  COLOR_KEY = 'green'
  ICON = 'graduation-cap'

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

    def self.color_key
      COLOR_KEY
    end

    def self.icon
      ICON
    end
  end
end
