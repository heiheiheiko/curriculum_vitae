class CreateChronicleItemsExperiences < ActiveRecord::Migration
  def change
    create_table :chronicle_items_experiences do |t|
      t.belongs_to :experience, index:true
      t.belongs_to :chronicle_item, index:true
    end
  end
end
