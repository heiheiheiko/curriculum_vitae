class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :slogan
      t.date :birthday
      t.string :family_status
      t.string :email
      t.string :mobile_phone

      t.timestamps null: false
    end
  end
end
