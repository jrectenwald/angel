json.extract! product, :id, :name, :price, :color, :size, :fit, :created_at, :updated_at
json.url product_url(product, format: :json)
