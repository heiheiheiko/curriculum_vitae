module Professional
  extend ActiveSupport::Concern

  COLOR_KEY = 'red'
  ICON = 'code'

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
