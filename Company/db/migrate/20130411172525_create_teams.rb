class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :supervisor

      t.timestamps
    end
    add_index :teams, :supervisor_id
  end
end
