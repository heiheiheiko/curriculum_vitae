class AddStartedAtAndEndedAtToChronicleItemSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :chronicle_item_skills, :started_at, :date
    add_column :chronicle_item_skills, :ended_at, :date
  end
end
