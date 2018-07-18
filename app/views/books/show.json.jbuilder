json.id @book.id
json.title @book.title
json.release_date @book.release_date.strftime('%m-%d-%Y')
json.base_price @book.base_price
json.currency_name number_to_currency(@book.base_price, format: '%u')
# TODO: Use https://github.com/RubyMoney/money to more currency details.
json.format_name @book.format

json.authors @book.authors do |author|
  json.first_name author.first_name
  json.last_name author.last_name
end
