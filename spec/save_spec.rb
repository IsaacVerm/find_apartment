RSpec.describe Save do
    
    page = Request.new("https://www.immoweb.be/nl/zoekertje/gelijkvloerse-verdieping/te-huur/jette/1090/id7425190").get_page
    listing_fields = ListingFields.new(page)
    parsed_fields = listing_fields.parse_all_fields
    
    save = Save.new(parsed_fields, environment = "test")
    
    it "current_datetime" do
        datetime_regex = /\d{4}-\d{2}-\d{2}_\d{2}:\d{2}:\d{2}/
        
        expect(save.current_datetime).to match(datetime_regex)
    end
    
    it "create_empty_listings_with_only_headers" do
        create_test_data_directory unless test_data_directory_exists?
        
        save.create_empty_listings_with_only_headers
        expect(save.listings_exists?).to be true
        
        remove_test_data_directory
    end
    
    it "saves as csv" do
            create_test_data_directory unless test_data_directory_exists?
            
            save.save_to_csv
            expect(save.listings_exists?).to be true
            
            # remove_test_data_directory
    end
    
end