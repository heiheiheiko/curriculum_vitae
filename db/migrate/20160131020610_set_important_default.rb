class SetImportantDefault < ActiveRecord::Migration
  def up
    change_column_default :chronicle_items, :important, false
  end

  def down
    change_column_default :chronicle_items, :important, nil
  end
end
