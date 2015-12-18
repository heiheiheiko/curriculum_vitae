class CreateExperience < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.references :experienceable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
