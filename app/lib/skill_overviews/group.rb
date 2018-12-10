module SkillOverviews
  class Group
    attr_reader :type, :items

    def initialize(type, items)
      @type = type
      @items = items
    end

    def time_range
      items.map{ |item| item.chronicle_item.time_range }.sum
    end
  end
end