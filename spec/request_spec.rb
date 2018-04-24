RSpec.describe Request do
    
    context 'get_page' do
        
        it 'overview' do
            request = Request.new("https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?minprice=700&maxprice=800&minroom=2&maxroom=2&page=1")
            page = request.get_page
            
            expect(page).to be_kind_of(Nokogiri::HTML::Document)
        end
        
        it 'listing' do
            request = Request.new("https://www.immoweb.be/nl/zoekertje/appartement/te-huur/saint-gilles/1060/id7499399")
            page = request.get_page
            
            expect(page).to be_kind_of(Nokogiri::HTML::Document)
        end
        
        
    end
    
end