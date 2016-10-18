class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.decimal :total_hours_per_day
      t.decimal :total_hours_per_project
      t.timestamps
    end
  end
end

# make the hour model
# make a limited version of the map

# 