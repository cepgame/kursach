json.extract! order, :id, :client_id, :number, :pay_method, :delivery_method, :product_list, :cost_of_products, :total_cost, :date_of_order, :created_at, :updated_at
json.url order_url(order, format: :json)
