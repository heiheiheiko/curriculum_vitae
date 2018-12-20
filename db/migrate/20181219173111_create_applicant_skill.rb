class CreateApplicantSkill < ActiveRecord::Migration[5.2]
  def change
    create_table :applicant_skills do |t|
      t.belongs_to :applicant, index:true
      t.belongs_to :skill, index:true
      t.timestamps null: false
    end
  end
end
