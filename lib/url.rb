class Url
    
    # provide arguments as integers
    def initialize
        @immoweb_url = "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?"
    end
    
end

class OverviewUrl < Url
    
    def initialize(min_price, max_price, nr_bedrooms, page_nr)
        @min_price = min_price.to_s
        @max_price = max_price.to_s
        @nr_bedrooms = nr_bedrooms.to_s
        @page_nr = page_nr.to_s
        
        super()
    end
    
    def create_url
        @immoweb_url + "minprice=" + @min_price + "&maxprice=" + @max_price + "&minroom=" + @nr_bedrooms + "&maxroom=" + @nr_bedrooms + "&page=" + @page_nr
    end
    
end



