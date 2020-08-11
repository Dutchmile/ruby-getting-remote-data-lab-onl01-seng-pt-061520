require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
class GetRequester

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
      binding.pry
  end

  def parse_json
    JSON.parse(self.get_response_body)

  end

end

# https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json
