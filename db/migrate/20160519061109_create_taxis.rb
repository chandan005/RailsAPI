class CreateTaxis < ActiveRecord::Migration[5.0]
  def change
    create_table :taxis do |t|
      t.string :taxi_number
      t.integer :taxi_availability

      t.timestamps
    end
  end
end
