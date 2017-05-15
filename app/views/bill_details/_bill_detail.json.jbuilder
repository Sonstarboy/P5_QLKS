json.extract! bill_detail, :id, :bill_id, :service_id, :unit_price, :amount, :total, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)
