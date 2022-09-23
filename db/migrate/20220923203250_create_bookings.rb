class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.datetime :appointment
      t.string :industry
      t.string :location
      t.text :description
      t.integer :model_id
      t.integer :client_id

      t.timestamps
    end
  end
end
