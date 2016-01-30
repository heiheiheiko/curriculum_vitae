module SkillOverviews
  class SkillGroup < Group
    def title
      type
    end

    def experience_groups
      items.
        group_by { |cis| cis.experience }.
        map { |k, v| SkillOverviews::Group.new(k.to_sym, v) }
    end
  end
end
