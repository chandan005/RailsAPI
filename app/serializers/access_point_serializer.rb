class AccessPointSerializer < ActiveModel::Serializer
  attributes :id, :ssid, :bssid, :mac_address, :nearby_point
end
