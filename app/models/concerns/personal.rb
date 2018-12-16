module Personal
  extend ActiveSupport::Concern
  
  COLOR_CLASS = 'text-blue'
  ICON = 'home'

  def color_class
    COLOR_CLASS
  end

  def icon
    ICON
  end

  included do
    def self.color_class
      COLOR_CLASS
    end

    def self.icon
      ICON
    end
  end
end
