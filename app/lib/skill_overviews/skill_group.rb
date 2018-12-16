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

    def time_range
      experience_groups.map{ |experience_group| experience_group.time_range }.sum
    end

    # decorator 
    def experience_groups_in_words
      i18n_scope = 'enums.chronicle_item_skill.experience'
 
      frequent = experience_groups.find { |eg| eg.type == :frequent }.try(:time_range).try(:period_in_words)
      frequent.present? ? frequent = "#{I18n.t(:frequent, scope: i18n_scope)}: #{frequent} <br>" : nil

      regular = experience_groups.find { |eg| eg.type == :regular }.try(:time_range).try(:period_in_words)
      regular.present? ? regular = "#{I18n.t(:regular, scope: i18n_scope)}: #{regular} <br>" : nil

      rare = experience_groups.find { |eg| eg.type == :rare }.try(:time_range).try(:period_in_words)
      rare.present? ? rare = "#{I18n.t(:rare, scope: i18n_scope)}: #{rare} <br>" : nil

      [frequent, regular, rare].compact.join("")
    end
  end
end
