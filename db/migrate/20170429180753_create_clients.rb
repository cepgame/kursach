class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name,		null: false 
      t.string :phone_number,	null: false 
      t.string :address,	null: false 
      t.string :email,		null: false 

      t.index [:name, :phone_number, :address, :email], unique: true

      t.timestamps null: false
    end
  end
end
