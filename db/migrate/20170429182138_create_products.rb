class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name,			null: false
      t.string :short_desc	
      t.text :full_desc		
      t.text :img_id_list	
      t.string :base_price,		null: false
      t.string :current_price,		null: false
      t.integer :amt_in_stock,		null: false
      t.integer :ven_code,		null: false
      t.integer :min_amt_in_order,	null: false

      t.index [:name, :ven_code], unique: true

      t.timestamps null: false
    end
  end
end
