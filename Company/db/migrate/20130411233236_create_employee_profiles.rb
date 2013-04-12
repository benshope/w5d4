class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.references :references
      t.integer :height
      t.string :favoritefood
      t.string :favoriteday
      t.date :dob
      t.integer :salary

      t.timestamps
    end
  end
end
