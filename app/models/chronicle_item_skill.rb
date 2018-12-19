class ChronicleItemSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :chronicle_item

  enum experience: [ :rare, :frequent, :regular ]

  def time_range
    if started_at && ended_at
      @period ||= ::TimeRange.new(started_at, ended_at)
    else
      @period ||= ::TimeRange.new(chronicle_item.started_at, chronicle_item.ended_at)
    end
  end
end
