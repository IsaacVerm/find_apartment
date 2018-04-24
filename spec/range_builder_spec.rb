it 'create_range_of_prices' do
        range_of_prices = query_strings_builder.create_range_of_prices
        
        expect(range_of_prices).to eq(["700", "800", "900"])
    end