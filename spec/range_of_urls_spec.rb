RSpec.describe RangeOfOverviewUrls do
        
        range_of_overview_urls = RangeOfOverviewUrls.new(start_price = 700, stop_price = 900, interval = 100, nr_bedrooms = 2)
        urls = range_of_overview_urls.create_urls

        it 'create_urls' do
                expect(urls).to include("https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=700&maxprice=800&minroom=2&maxroom=2&page=1",
                                        "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=800&maxprice=900&minroom=2&maxroom=2&page=17")
        end
        
end
    