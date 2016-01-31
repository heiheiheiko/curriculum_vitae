class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :position
      t.text :letter
      t.belongs_to :applicant, index:true
      t.timestamps null: false
    end
  end
end
