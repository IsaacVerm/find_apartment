RSpec.describe Save do
    
    page = Request.new("https://www.immoweb.be/nl/zoekertje/gelijkvloerse-verdieping/te-huur/jette/1090/id7425190").get_page
    listing_fields = ListingFields.new(page)
    parsed_fields = listing_fields.parse_all_fields
    
    save = Save.new(parsed_fields)
    
    it "current_datetime" do
        datetime_regex = /\d{4}-\d{2}-\d{2}_\d{2}:\d{2}:\d{2}/
        
        expect(save.current_datetime).to match(datetime_regex)
    end
    
    it "create_empty_csv_with_only_headers"
    
    context "save_to_csv" do
        
        it "saves as csv"
        it "saved in data folder"
        it "has headers"
        
    end
    
end