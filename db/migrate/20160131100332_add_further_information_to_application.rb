class AddFurtherInformationToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :salary_expectations, :integer
    add_column :applications, :availability, :date
  end
end
