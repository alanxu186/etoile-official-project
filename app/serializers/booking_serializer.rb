class BookingSerializer < ActiveModel::Serializer
  attributes :id, :name, :appointment, :industry, :location, :description, :model_id, :client_id
end
