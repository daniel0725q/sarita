json.extract! payment, :id, :name, :description, :info, :created_at, :updated_at
json.url payment_url(payment, format: :json)
