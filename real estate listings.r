class RealEstateListing
  attr_accessor :address, :price, :bedrooms, :bathrooms, :sqft

  def initialize(address, price, bedrooms, bathrooms, sqft)
    @address = address
    @price = price
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @sqft = sqft
  end

  def to_s
    "Address: #{@address}\nPrice: $#{@price}\nBedrooms: #{@bedrooms}\nBathrooms: #{@bathrooms}\nSquare Feet: #{@sqft}"
  end
end

class RealEstateListingsManager
  def initialize
    @listings = []
  end

  def add_listing(listing)
    @listings << listing
    puts "Listing added successfully!"
  end

  def view_listings
    if @listings.empty?
      puts "No listings available."
    else
      puts "Real Estate Listings:"
      @listings.each_with_index do |listing, index|
        puts "#{index + 1}. #{listing}"
      end
    end
  end
end

# Example usage
listings_manager = RealEstateListingsManager.new

# Adding listings
listing1 = RealEstateListing.new("123 Main St", 250000, 3, 2, 2000)
listing2 = RealEstateListing.new("456 Elm St", 350000, 4, 3, 3000)
listings_manager.add_listing(listing1)
listings_manager.add_listing(listing2)

# Viewing listings
listings_manager.view_listings
