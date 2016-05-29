class CreateInternationals < ActiveRecord::Migration[5.0]
  def change
    create_table :internationals do |t|
      t.string :tapped_timestamp
      t.string :mac_address

      t.timestamps
    end
  end
end
