class ModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :location, :phone_number, :agency, :about, :status, :ethnicity, :gender, :height
end
