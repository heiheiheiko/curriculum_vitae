module Educational
  extend ActiveSupport::Concern

  COLOR_KEY = 'green'
  ICON = 'graduation-cap'

  def color_key
    COLOR_KEY
  end

  def icon
    ICON
  end

  included do
    def self.color_key
      COLOR_KEY
    end

    def self.icon
      ICON
    end
  end
end
