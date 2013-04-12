class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.references :employee
      t.integer :height
      t.string :favoritefood
      t.string :favoriteday
      t.date :dob
      t.integer :salary

      t.timestamps
    end
    add_index :employee_profiles, :employee_id
  end
end