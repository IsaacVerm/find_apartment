RSpec.describe Save do
    
    page = Request.new("https://www.immoweb.be/nl/zoekertje/gelijkvloerse-verdieping/te-huur/jette/1090/id7425190").get_page
    listing_fields = ListingFields.new(page)
    
    context "save_to_csv" do
        
        it "saves as csv"
        it "saved in data folder"
        it "has headers"
        
    end
    
end