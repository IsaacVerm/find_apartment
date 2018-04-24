class Fields
    
    def initialize(page)
        @page = page
    end
    
    def parse_field(field)
        @page.xpath(@field_xpaths[field]).text
    end
    
end

class ListingFields < Fields
    
    def initialize(page)
        super(page)
        
        title_xpath = "//h1[@id='propertyPage-title']"
        overview_xpath = "//div[@id='general-section']"
        interior_xpath = ""
        exterior_xpath = ""
        financial_xpath = ""
        energy_xpath = 
        
        @field_xpaths = {"muncipality" => title_xpath + "//span[@data-label='locality']",
                         "availability_date" => overview_xpath + "//tr[@aria-label='general-transactionDetails-availabilityDate']/td",
                         "construction_year" => overview_xpath + "//tr[@aria-label='general-buildingDescription-constructionYear']/td"
        }
    end
end

class OverviewFields < Fields
    
    def initialize(page)
        super(page)
        
        navigation_xpath = "//ul[@class='nav-nummer']"
        
        @field_xpaths = {"current_page_nr" => "(" + navigation_xpath + "//li[@class='select'])[1]",
                         "nr_of_pages" => "(" + navigation_xpath + "/li)[last()]"}
    end
end
