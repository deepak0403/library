json.extract! invoice, :id, :name, :book, :category, :address, :isbn, :phone, :price, :date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)