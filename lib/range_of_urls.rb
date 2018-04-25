class RangeOfOverviewUrls
    
    def initialize(start_price, stop_price, interval, nr_bedrooms)
        @start_price = start_price
        @stop_price = stop_price
        @interval = interval
        @nr_bedrooms = nr_bedrooms
        
        @max_nr_of_pages = 17
    end
    
    def create_urls
        range_of_prices = RangeBuilder::create_range_of_prices(@start_price, @stop_price, @interval)
        range_of_page_nrs = RangeBuilder::create_range_of_page_nrs(@max_nr_of_pages)
        
        urls = Array.new
        
        range_of_prices.each_index do |ind|
            
            break if (ind == (range_of_prices.length - 1)) # you can't create range for the last price anymore
            
            range_of_page_nrs.each do |page_nr|
                urls << OverviewUrl.new(min_price = range_of_prices[ind],
                                        max_price = range_of_prices[ind + 1],
                                        nr_bedrooms = @nr_bedrooms,
                                        page_nr = page_nr).create_url
                                        end
                                    end
                                    
        return urls
    end
    
end