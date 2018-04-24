class QueryStrings
    
    def initialize(nr_bedrooms, start_price, stop_price, interval)
        @start = start_price
        @stop = stop_price
        @interval = interval
        @nr_bedrooms = nr_bedrooms.to_s
        
        @immoweb_url = "https://www.immoweb.be/nl/zoek/appartement/te-huur/brussel?"
    end
    
    def create_query_string(min_price, max_price)
        query_string = @immoweb_url + "minprice=" + min_price + "&maxprice=" + max_price + "&minroom=" + @nr_bedrooms + "&maxroom=" + @nr_bedrooms
        
        return(query_string)
    end
    
    def create_range_of_prices
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
            
            query_string = @immoweb_url + "minprice=" + range_of_prices[ind] + "&maxprice=" + range_of_prices[ind + 1] + "&minroom=" + @nr_bedrooms + "&maxroom=" + @nr_bedrooms
            query_strings << query_string
        end
        
        return query_strings
    end
    
    private def range_of_pages
        
    end
    
end

