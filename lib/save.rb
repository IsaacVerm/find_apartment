class Save
    
    CURRENT_PATH = File.expand_path(File.dirname(__FILE__))
    DATA_PATH = CURRENT_PATH + "/../data/"
    TEST_DATA_PATH = DATA_PATH + "test/"
    
    def initialize(parsed_fields)
        @parsed_fields = parsed_fields
        @listings_filename = "listings.csv"
    end
    
    def current_datetime
        Time.now.to_s.gsub(/\s+/, "_").gsub("_+0000", "")
    end
    
    def create_empty_listings_with_only_headers(use_separate_test_folder = FALSE)
        if use_separate_test_folder == TRUE
            save_path = TEST_DATA_PATH
        else
            save_path = DATA_PATH
        end
        
        CSV.open(save_path + @listings_filename, "wb") do |csv|  
            csv << @parsed_fields.keys
        end  
        
        @parsed_fields.keys
    end
    
    def listings_exists?
        File.exist?(DATA_PATH + "listings.csv")
    end
    
    def save_to_csv
        create_empty_listings_with_only_headers unless listings_exists?
        
        CSV.open(DATA_PATH + @listings_filename, "a+") do |csv|  
            csv << @parsed_fields.values
        end  
    end
    
end