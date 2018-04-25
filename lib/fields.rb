class Fields
    
    def initialize(page)
        @page = page
    end
    
    def parse_field(field)
        @page.xpath(@field_xpaths[field]).text.strip
    end
    
end


