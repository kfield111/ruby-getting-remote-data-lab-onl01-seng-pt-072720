require 'net/https'
require 'open-uri'
require 'json'


class GetRequester

  def initialize (url_address)
    @url_address = url_address
  end

  def get_response_body
    uri = URI.parse(url_address)
    response = NET::HTTPS.get_response(uri)
    response.body
  end

end
