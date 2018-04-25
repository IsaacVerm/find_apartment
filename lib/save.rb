class Save
    
    def initialize(parsed_fields)
        @parsed_fields = parsed_fields
    end
    
    def current_date
        Time.now.to_s.gsub(/\s+/, "_").gsub("_+0000", "")
    end
    
    def save_to_csv
    end
    
end