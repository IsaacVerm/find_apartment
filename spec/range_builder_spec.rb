RSpec.describe Fields do

    it 'create_range_of_prices' do
        range_of_prices = RangeBuilder.create_range_of_prices(start_price = 700, stop_price = 900, interval = 100)
        
        expect(range_of_prices).to eq(["700", "800", "900"])
    end
    
    it 'create_range_of_page_nrs' do
        range_of_page_nrs = RangeBuilder.create_range_of_page_nrs(max_nr_of_pages = 17)
        
        expect(range_of_page_nrs).to eq(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"])
    end
    
end