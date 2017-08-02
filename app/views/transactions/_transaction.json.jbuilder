json.extract! transaction, :id, :account_id, :date, :category, :comment, :amount, :done, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
