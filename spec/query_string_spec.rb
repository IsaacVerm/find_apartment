RSpec.describe QueryString do
    
    query_string = QueryString.new(min_price = 100, max_price = 200, nr_bedrooms = 2, page_nr = 2).create_query_string
    
    it 'create_query_string' do
        expect(query_string).to eq("https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=100&maxprice=200&minroom=2&maxroom=2&page=2")
    end
    
    
    
end
