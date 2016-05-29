class CreateSkybusT4s < ActiveRecord::Migration[5.0]
  def change
    create_table :skybus_t4s do |t|
      t.string :timetable

      t.timestamps
    end
  end
end
