class SkillOverview
  def initialize(applicant)
    @items = applicant.chronicle_items.map(&:chronicle_item_skills).flatten.compact
  end

  def skill_type_groups
    @skill_type_groups ||=
      @items.
        group_by { |cis| cis.skill.information_type }.
        map { |k, v| SkillOverviews::SkillTypeGroup.new(k, v) }
  end
end
