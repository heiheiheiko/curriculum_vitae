class DropLinks < ActiveRecord::Migration
  def up
    drop_table :links
  end

  def down
    create_table :links, id: false do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :type
      t.references :informable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
