class ListingFields < Fields
    
    def initialize(page)
        super(page)
        
        title_xpath = "//h1[@id='propertyPage-title']"
        overview_xpath = "//div[@id='general-section']"
        interior_xpath = "//div[@id='interior-section']"
        financial_xpath = "//div[@id='financial-section']"
        energy_xpath = "//div[@id='energy-section']"
        
        @field_xpaths = {"muncipality" => title_xpath + "//span[@data-label='locality']", # title
                         "availability_date" => overview_xpath + "//tr[@aria-label='general-transactionDetails-availabilityDate']/td", # overview
                         "construction_year" => overview_xpath + "//tr[@aria-label='general-buildingDescription-constructionYear']/td",
                         "floors" => overview_xpath + "//tr[@aria-label='general-buildingDescription-floorCount']/td",
                         "current_state" => overview_xpath + "//tr[@aria-label='general-buildingDescription-renovationType']/td", 
                         "habitable_area" => interior_xpath + "//tr[@aria-label='interior-livingDescription-habitableArea']/td", # interior
                         "rent" => financial_xpath + "//tr[@aria-label='Gevraagde maandelijkse huurprijs']/td", # financial
                         "charges" => financial_xpath + "//tr[@aria-label='financial-monthlyCharges']/td",
                         "energy_consumption" => energy_xpath + "//tr[@aria-label='energy-energyConsumption']/td" # energy
                        }
    end
    
end