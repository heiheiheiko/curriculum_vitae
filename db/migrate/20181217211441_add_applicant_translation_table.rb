class AddApplicantTranslationTable < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        Applicant.create_translation_table! slogan: :string, family_status: :string
      end

      dir.down do
        Applicant.drop_translation_table!
      end
    end
  end
end
