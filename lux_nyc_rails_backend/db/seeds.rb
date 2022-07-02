require_relative '../scraper.rb'
# User.create(fullname: "John Doe", username: "jdoe", email: "something@gmail.com")

hotels = HotelScraper.new

hotels.hotels.each do |hotel|
  Hotel.create(name: hotel[:name], images: hotel[:images])
  byebug
end
