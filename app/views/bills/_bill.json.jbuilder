json.extract! bill, :id, :agreement_id, :code, :bill_date, :other_cost, :total_amount, :description, :created_at, :updated_at
json.url bill_url(bill, format: :json)
