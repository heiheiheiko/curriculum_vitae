module Educational
  extend ActiveSupport::Concern

  def self.color_class
    self.class.color_class
  end

  def self.icon
    self.class.icon
  end

  included do
    def self.color_class
      'educational'
    end

    def self.icon
      'graduation-cap'
    end
  end
end
