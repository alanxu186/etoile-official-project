class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :address, :phone_number, :about, :website_url
end
