class AddExperienceToChronicleItemSkill < ActiveRecord::Migration
  def change
    add_column :chronicle_item_skills, :experience, :integer
  end
end
