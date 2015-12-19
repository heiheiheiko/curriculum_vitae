class CreateChronicleItemInformations < ActiveRecord::Migration
  def change
    create_table :chronicle_item_informations do |t|
      t.belongs_to :chronicle_item, index:true
      t.belongs_to :information, index:true
      t.timestamps null: false
    end
  end
end
