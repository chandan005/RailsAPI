class TaxiSerializer < ActiveModel::Serializer
  attributes :id, :taxi_number, :taxi_availability
end
