json.extract! account, :id, :transaction_type, :amount, :day, :created_at, :updated_at
json.url account_url(account, format: :json)
