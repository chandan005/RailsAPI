class CreateSkybusT3s < ActiveRecord::Migration[5.0]
  def change
    create_table :skybus_t3s do |t|
      t.string :timetable

      t.timestamps
    end
  end
end
