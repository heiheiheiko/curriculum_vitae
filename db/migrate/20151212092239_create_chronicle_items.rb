class CreateChronicleItems < ActiveRecord::Migration
  def change
    create_table :chronicle_items do |t|
      t.date :started_at
      t.date :ended_at
      t.string :title
      t.text :description
      t.string :position
      t.string :employment
      t.string :website
      t.string :badge
      t.boolean :important
      t.belongs_to :applicant, index:true
      t.timestamps null: false
    end
  end
end
