class CreateChronicleItems < ActiveRecord::Migration
  def change
    create_table :chronicle_items do |t|
      t.date :started_at
      t.date :ended_at
      t.string :title
      t.text :descriptoin
      t.belongs_to :applicant, index:true
      t.timestamps null: false
    end
  end
end
