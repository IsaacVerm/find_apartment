require_relative "./query_strings"

# query strings
query_strings_builder = QueryStrings.new(nr_bedrooms = 2, start_price = 700, stop_price = 1300, interval = 50)
query_strings = query_strings_builder.create_query_strings

# requests
first_page =
puts first_page

# parse json

# extract fields

# save to database