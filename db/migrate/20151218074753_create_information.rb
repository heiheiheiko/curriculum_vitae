class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.text :description
      t.integer :information_type, default: 0
      t.string :type
      t.references :informable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
