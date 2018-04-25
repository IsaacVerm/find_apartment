it 'create_range_of_prices' do
        range_of_prices = query_strings_builder.create_range_of_prices
        
        expect(range_of_prices).to eq(["700", "800", "900"])
    end
    
    it 'create_range_of_page_nrs' do
        range_of_page_nrs = listing.create_range_of_page_nrs
        
        expect(range_of_page_nrs).to eq(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"])
    end