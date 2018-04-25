RSpec.describe Fields do
    
    context OverviewFields do
        
        url = OverviewUrl.new(min_price = 900, max_price = 950, nr_bedrooms = 2, page_nr = 2).create_url
        page = Request.new(url).get_page
        overview_fields = OverviewFields.new(page)
        
        it "parse_listing_urls" do
            listing_urls = overview_fields.parse_listing_urls
            
            listing_url_regex = /https:\/\/www.immoweb.be\/.*id\d{7}/
            
            expect(listing_urls).to all(match listing_url_regex)
        end
        
        context "parse_field" do
            
            fields_to_parse = ["current_page_nr","nr_of_pages"]
            
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