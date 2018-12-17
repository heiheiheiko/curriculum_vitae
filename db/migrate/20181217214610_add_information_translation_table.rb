class AddInformationTranslationTable < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        Information.create_translation_table! title: :string, description: :string
      end

      dir.down do
        Information.drop_translation_table!
      end
    end
  end
end
