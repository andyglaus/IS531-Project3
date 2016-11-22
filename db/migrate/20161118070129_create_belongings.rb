class CreateBelongings < ActiveRecord::Migration[5.0]
  def change
    create_table :belongings do |t|
      t.string :name
      t.string :location
      t.string :organization
      t.string :manufacturer
      t.integer :part
      t.text :description
      t.integer :month
      t.integer :year
      t.text :notes
      t.integer :employee_id

      t.timestamps
    end
  end
end
