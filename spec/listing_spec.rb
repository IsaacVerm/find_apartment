RSpec.describe Listing do
    
    query_strings_builder = QueryStrings.new(nr_bedrooms = 2, start_price = 700, stop_price = 900, interval = 100)
    query_strings = query_strings_builder.create_query_strings
    
    listing = Listing.new(query_strings)
    
    it 'create_range_of_page_nrs' do
        range_of_page_nrs = listing.create_range_of_page_nrs
        
        expect(range_of_page_nrs).to eq(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"])
    end
    
    it 'get_page' do
        page = listing.get_page(query_string = "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=800&maxprice=1000&minroom=2&maxroom=2",
                                page_nr = "1")
        
        expect(page).to be_kind_of(Nokogiri::HTML::Document)
    end
    
end