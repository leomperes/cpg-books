json.extract! book, :id, :title, :release_date, :base_price, :created_at, :updated_at
json.url book_url(book, format: :json)
