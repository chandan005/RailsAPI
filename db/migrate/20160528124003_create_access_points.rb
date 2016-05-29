class CreateAccessPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :access_points do |t|
      t.string :ssid
      t.string :bssid
      t.string :mac_address
      t.string :nearby_point

      t.timestamps
    end
  end
end
