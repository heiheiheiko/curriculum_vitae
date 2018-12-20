module SkillOverviews
  class Group
    attr_reader :type, :items

    def initialize(type, items)
      @type = type
      @items = items.sort_by(&:id)
    end

    def time_range
      items.map{ |item| item.time_range }.sum
    end
  end
end
