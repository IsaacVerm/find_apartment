RSpec.describe QueryStrings do
    
    query_strings_builder = QueryStrings.new(nr_bedrooms = 2, start_price = 700, stop_price = 900, interval = 100)
    
    it 'create_query_string' do
        query_string = query_strings_builder.create_query_string(min_price = "100", max_price = "200")
        
        expect(query_string).to eq("https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=100&maxprice=200&minroom=2&maxroom=2")
    end
    
    it 'create_range_of_prices' do
        range_of_prices = query_strings_builder.create_range_of_prices
        
        expect(range_of_prices).to eq(["700", "800", "900"])
    end
    
    it 'create_query_strings' do
        query_strings = query_strings_builder.create_query_strings
        
        expect(query_strings).to eq(["https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=700&maxprice=800&minroom=2&maxroom=2",
                                     "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=800&maxprice=900&minroom=2&maxroom=2"])
    end
end
