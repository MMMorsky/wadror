class BeermappingApi
  def self.places_in(city)
    city = city.downcase
    Rails.cache.fetch(city, expires_in: 30.minutes) { fetch_places_in(city) }
  end

  def self.place_in(id, city)
    city = city.downcase
    places_in(city).select{ |p| p.id==id}.first
  end

  def self.fetch_places_in(city)
    url = 'http://stark-oasis-9187.herokuapp.com/api/'

    response = HTTParty.get "#{url}#{ERB::Util.url_encode(city)}"
    places = response.parsed_response["bmp_locations"]["location"]

    return [] if places.is_a?(Hash) and places['id'].nil?

    places = [places] if places.is_a?(Hash)
    places.map do | place |
      Place.new(place)
    end
  end
end