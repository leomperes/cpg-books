# json.array! @books, partial: 'books/book', as: :book

json.array! @books do |book|
  json.id book.id
  json.title book.title.delete_prefix('The ').delete_prefix('A ')[0,20]
  json.release_date book.release_date.year
  json.base_price book.base_price
  json.authors_names book.authors_names
end
