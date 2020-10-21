require 'rest-client'
require 'json'

class GetGoogleCoffeeListService
  def initialize(latitude, longitude)
    @longitude = longitude
    @latitude = latitude
  end

  def call
    base_url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shops&location=#{@latitude},#{@longitude}&radius=5000&key=#{Rails.application.credentials.google_secret_key}"
    response = RestClient.get base_url
    JSON.parse(response.body)
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end
end
