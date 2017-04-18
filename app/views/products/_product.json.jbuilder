json.extract! product, :id, :name, :manufacturer, :product_class, :tech_specs, :created_at, :updated_at
json.url product_url(product, format: :json)
