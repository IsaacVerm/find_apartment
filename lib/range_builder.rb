module RangeBuilder
    
    def self.create_range_of_prices(start_price, stop_price, interval)
        (start_price..stop_price).step(interval).to_a.map(&:to_s)
    end
    
    def self.create_range_of_page_nrs(max_nr_of_pages)
        (1..max_nr_of_pages).map(&:to_s) 
    end
    
end