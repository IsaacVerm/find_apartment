require_relative "./query_strings_builder"

# criteria
query_strings_builder = QueryStringsBuilder.new(start_price = 700, stop_price = 1300, interval = 50)
query_strings = query_strings_builder.create_query_strings
puts query_strings



# request

# parse json

# extract fields

# save to database