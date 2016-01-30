module Personal
  extend ActiveSupport::Concern

  def self.color_class
    self.class.color_class
  end

  def self.icon
    self.class.icon
  end

  included do
    def self.color_class
      'personal'
    end

    def self.icon
      'home'
    end
  end
end
