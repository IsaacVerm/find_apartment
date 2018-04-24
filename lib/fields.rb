class Fields
    
    def initialize(page)
        @page = Nokogiri::HTML(page)
        
        navigation_xpath = "//ul[@class='nav-nummer']"
        
        @field_xpaths = {"current_page_nr" => navigation_xpath + "//li[@class='select']",
                         "nr_of_pages" => "(" + navigation_xpath + "/li)[last()]"}
    end
    
    def parse_field(field)
        @page.xpath(@field_xpaths[field])
    end
    
end
