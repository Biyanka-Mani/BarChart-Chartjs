json.extract! sales_record, :id, :date, :amount, :category, :created_at, :updated_at
json.url sales_record_url(sales_record, format: :json)
