class Save
    
    def initialize(parsed_fields)
        @parsed_fields = parsed_fields
    end
    
    def current_datetime
        Time.now.to_s.gsub(/\s+/, "_").gsub("_+0000", "")
    end
    
    def create_empty_csv_with_only_headers
        @parsed_fields.keys
    end
    
    def csv_already_exists?
        
    end
    
    def save_to_csv
        create_empty_csv_with_only_headers unless csv_already_exists?
        
        CSV.open("../data/", "wb") do |csv|  
            csv << @parsed_fields.values
        end  
    end
    
end