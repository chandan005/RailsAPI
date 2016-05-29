class CreateSkybusT1s < ActiveRecord::Migration[5.0]
  def change
    create_table :skybus_t1s do |t|
      t.string :timetable

      t.timestamps
    end
  end
end
