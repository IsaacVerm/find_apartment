class Fields
    
    def initialize(page)
        @page = page
    end
    
    def parse_field(field)
        @page.xpath(@field_xpaths[field]).text.strip
    end
    
    def parse_all_fields
        field_names = @field_xpaths.keys
        
        values = field_names.map do |field|
            parse_field(field)
        end
        
        fields = Hash.new
        field_names.zip(values) do |name, value|
            fields[name] = value
        end
        
        puts fields
        return(fields)
    end
    
end


