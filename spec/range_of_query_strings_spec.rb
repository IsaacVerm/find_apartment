RSpec.describe RangeOfQueryStrings do
        
        range_of_query_strings = RangeOfQueryStrings.new(start_price = 700, stop_price = 900, interval = 100, nr_bedrooms = 2)
        query_strings = range_of_query_strings.create_query_strings

        it 'create_query_strings' do
                puts query_strings
                expect(query_strings).to include("https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=700&maxprice=800&minroom=2&maxroom=2&page=1",
                                                 "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=800&maxprice=900&minroom=2&maxroom=2&page=17")
        end
        
end
    