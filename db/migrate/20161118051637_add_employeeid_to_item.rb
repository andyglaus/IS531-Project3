class AddEmployeeidToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :employee_id, :integer
  end
end
