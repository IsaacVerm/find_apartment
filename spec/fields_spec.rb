RSpec.describe Fields do
    
    query_strings_builder = QueryStrings.new(nr_bedrooms = 2, start_price = 700, stop_price = 900, interval = 100)
    query_strings = query_strings_builder.create_query_strings
    
    listing = Listing.new(query_strings)
    page = listing.get_page(query_string = "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=800&maxprice=1000&minroom=2&maxroom=2",
                            page_nr = "1")
    
    context OverviewFields do
        
        overview_fields = OverviewFields.new(page)
        fields_to_parse = ["current_page_nr","nr_of_pages"]
        
        context "parse_field" do
            
            it "returns the text value" do
                fields_to_parse.each do |field|
                    parsed_field = overview_fields.parse_field(field)

                    expect(parsed_field).to be_kind_of(String)
                end
            end
            
            it "throws an error if the field doesn't exist" do
            end
            
        end
    end
    
    context ListingFields do
        
        it "returns the text value" do
        end
        
        it "throws an error if the field doesn't exist" do
        end
    end
        
end