class Request
    
    def initialize(url)
        @url = url
    end
    
    def get_page
        Nokogiri::HTML(RestClient.get(@url))
    end
    
end
