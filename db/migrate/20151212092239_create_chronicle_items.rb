class CreateChronicleItems < ActiveRecord::Migration
  def change
    create_table :chronicle_items do |t|
      t.date :started_at
      t.date :ended_at
      t.string :title
      t.text :description
      t.integer :position
      t.integer :employment
      t.string :badge
      t.boolean :important
      t.string :type
      t.string :graduation
      t.belongs_to :applicant, index:true
      t.timestamps null: false
    end
  end
end
