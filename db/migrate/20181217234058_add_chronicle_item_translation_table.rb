class AddChronicleItemTranslationTable < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        ChronicleItem.create_translation_table! title: :string, description: :string, graduation: :string
      end

      dir.down do
        ChronicleItem.drop_translation_table!
      end
    end
  end
end
