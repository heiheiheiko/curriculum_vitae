class AddPersonToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :person, :string

    remove_column :applicants, :first_name, :string
    remove_column :applicants, :last_name, :string
  end
end
