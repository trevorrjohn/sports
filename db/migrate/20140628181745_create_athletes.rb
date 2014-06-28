class CreateAthletes < ActiveRecord::Migration
  def up
    create_table :athletes, id: :uuid do |t|
      t.string :name, null: false
      t.string :espn_id, null: false

      t.timestamps
    end

    add_index :athletes, [:name, :espn_id], unique: true
  end

  def down
    remove_index :athletes, :column => [:name, :espn_id]

    drop_table :athletes
  end
end
