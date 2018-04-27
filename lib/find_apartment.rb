# load gems
require 'rest-client'
require 'nokogiri'
require 'csv'

# load own code
require_relative "./url"
require_relative "./request"
require_relative "./range_builder"
require_relative "./range_of_urls"
require_relative "./fields"
require_relative "./overview_fields"
require_relative "./listing_fields"
require_relative "./save"

# overview_urls
overview_urls = RangeOfOverviewUrls.new(start_price = 750, stop_price = 1000, interval = 10, nr_bedrooms = 2).create_urls

# puts overview_urls
puts "-----------------------"

# overview pages
overview_pages = overview_urls.map do |overview_url|
    begin
        Request.new(overview_url).get_page
    rescue
        next
    end
end

# puts overview_pages
puts "-----------------------"

# listing urls
listing_urls = Array.new
overview_pages.each do |page|
    begin 
        listing_urls += OverviewFields.new(page).parse_listing_urls
    rescue
        next
    end
end

# puts listing_urls
puts "-----------------------"

# extract fields and save
listing_urls.each do |listing_url|
    begin
        puts listing_url
        page = Request.new(listing_url).get_page
        listing_fields = ListingFields.new(page).parse_all_fields
        puts listing_fields
        Save.new(listing_fields).save_to_csv
    rescue
        next
    end
end


