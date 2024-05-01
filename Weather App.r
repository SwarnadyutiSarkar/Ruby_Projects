require 'open-uri'
require 'json'

class WeatherApp
  def initialize(api_key)
    @api_key = api_key
  end

  def get_weather(city)
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{@api_key}"
    response = URI.open(url).read
    weather_data = JSON.parse(response)
    temperature = (weather_data['main']['temp'] - 273.15).round(2) # Convert temperature from Kelvin to Celsius
    description = weather_data['weather'][0]['description']
    "Current weather in #{city}: #{temperature}°C, #{description.capitalize}"
  rescue StandardError => e
    "Error retrieving weather data: #{e.message}"
  end
end

# Example usage
weather_app = WeatherApp.new("YOUR_API_KEY")

puts weather_app.get_weather("New York")
