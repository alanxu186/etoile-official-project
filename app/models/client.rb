class Client < ApplicationRecord
    has_many :bookings
    has_many :models, through: :bookings
    has_secure_password

    validates :name, presence: true, length: {minimum: 3, maximum: 25}
    validates :email, presence: true, uniqueness: true, length: {minimum: 10, maximum: 255}
    validates :password, presence: true, length: {minimum: 6, maximum: 255}
end
