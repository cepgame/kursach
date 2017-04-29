json.extract! product, :id, :name, :short_desc, :full_desc, :img_id_list, :base_price, :current_price, :amt_in_stock, :ven_code, :min_amt_in_order, :created_at, :updated_at
json.url product_url(product, format: :json)
