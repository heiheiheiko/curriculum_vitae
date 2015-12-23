class CreateChronicleItemSkills < ActiveRecord::Migration
  def change
    create_table :chronicle_item_skills do |t|
      t.belongs_to :chronicle_item, index:true
      t.belongs_to :skill, index:true
      t.timestamps null: false
    end
  end
end
