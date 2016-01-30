module Professional
  extend ActiveSupport::Concern

  def self.color_class
    self.class.color_class
  end

  def self.icon
    self.class.icon
  end

  included do
    def self.color_class
      'professional'
    end

    def self.icon
      'code'
    end
  end
end
