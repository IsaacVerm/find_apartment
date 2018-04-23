class QueryStringsBuilder

    NUMBER_OF_BEDROOMS = "2"
    IMMOWEB_URL = "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?"
    
    def initialize(start_price, stop_price, interval)
        @start = start_price
        @stop = stop_price
        @interval = interval
    end
    
    private def create_range_of_prices
        # create range
        range_of_prices = (@start..@stop).step(@interval).to_a
        
        # as characters
        range_of_prices = range_of_prices.map(&:to_s)
        
        return range_of_prices
    end
    
    def create_query_strings
        range_of_prices = create_range_of_prices
        
        query_strings = Array.new
        range_of_prices.each_index do |ind|
            break if (ind == (range_of_prices.length - 1)) # you can't create range for the last price anymore
            
            query_string = IMMOWEB_URL + "minprice=" + range_of_prices[ind] + "&maxprice=" + range_of_prices[ind + 1] + "&minroom=" + NUMBER_OF_BEDROOMS + "&maxroom=" + NUMBER_OF_BEDROOMS
            query_strings << query_string
        end
        
        return query_strings
    end
        
end

