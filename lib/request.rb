class Request
    
    def initialize(url, sleep = 2.00)
        @url = url
        @variable_sleep_time = rand(0.5*sleep..1.5*sleep)
    end
    
    def get_page
        sleep(@variable_sleep_time)
        
        Nokogiri::HTML(RestClient.get(@url))
    end
    
end
