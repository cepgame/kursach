class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :client, index: true, foreign_key: true
      t.integer :number,		null: false 
      t.string :pay_method,		null: false 
      t.string :delivery_method,	null: false 
      t.text :product_list,		null: false 
      t.text :cost_of_products,		null: false 
      t.integer :total_cost,		null: false 
      t.date :date_of_order,		null: false 

      t.timestamps null: false
    end
    reversible do |dir|
      dir.up do
        execute("ALTER TABLE orders ADD CONSTRAINT pay_method_check CHECK(pay_method IN ('Безналичный расчёт', 'Наличными курьеру'))")
      end
      dir.down do
        execute("ALTER TABLE orders DROP CONSTRAINT pay_method_check")
      end
    end

    reversible do |dir|
      dir.up do
        execute("ALTER TABLE orders ADD CONSTRAINT delivery_method_check CHECK(delivery_method IN ('Курьером', 'Самовывоз', 'Почтой'))")
      end
      dir.down do
        execute("ALTER TABLE orders DROP CONSTRAINT delivery_method_check")
      end
    end
  end
end
