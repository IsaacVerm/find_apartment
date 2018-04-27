class Save
    
    CURRENT_PATH = File.expand_path(File.dirname(__FILE__))
    DATA_PATH = CURRENT_PATH + "/../data/"
    TEST_DATA_PATH = DATA_PATH + "test/"
    
    def initialize(parsed_fields, environment = "production")
        @parsed_fields = parsed_fields
        @listings_filename = "listings.csv"
        @save_path = case environment
                     when "production"
                        DATA_PATH
                     when "test"
                         TEST_DATA_PATH
                     end
    end
    
    def current_datetime
        Time.now.to_s.gsub(/\s+/, "_").gsub("_+0000", "")
    end
    
    def create_empty_listings_with_only_headers
        CSV.open(@save_path + @listings_filename, "wb") do |csv|  
            csv << @parsed_fields.keys
        end  
    end
    
    def listings_exists?
        File.exist?(@save_path + "listings.csv")
    end
    
    def save_to_csv
        create_empty_listings_with_only_headers unless listings_exists?
        
        CSV.open(@save_path + @listings_filename, "a+") do |csv|  
            csv << @parsed_fields.values
        end  
    end
    
end