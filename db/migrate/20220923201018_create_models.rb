class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.integer :phone_number
      t.string :agency
      t.text :about
      t.boolean :status
      t.string :ethnicity
      t.string :gender
      t.integer :height

      t.timestamps
    end
  end
end
