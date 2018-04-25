class OverviewFields < Fields
    
    def initialize(page)
        super(page)
        
        navigation_xpath = "//ul[@class='nav-nummer']"
        
        @field_xpaths = {"current_page_nr" => "(" + navigation_xpath + "//li[@class='select'])[1]",
                         "nr_of_pages" => "(" + navigation_xpath + "/li)[last()]"
        }
        
        @listing_url_xpath = "//div[@id='result']/div/a"
    end
    
    def parse_listing_urls
        @page.xpath(@listing_url_xpath).map { |listing| listing.attr("href") }
    end
    
end