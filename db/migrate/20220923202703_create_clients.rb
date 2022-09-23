class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.integer :phone_number
      t.text :about
      t.string :website_url

      t.timestamps
    end
  end
end
