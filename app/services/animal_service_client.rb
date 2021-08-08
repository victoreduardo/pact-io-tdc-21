require 'httparty'

class AnimalServiceClient
  include HTTParty
  base_uri 'http://animal-service.com'

  def get_alligator
    response = JSON.parse(self.class.get('/alligators').body)
    puts response
    Alligator.new(name: response[0]['name'])
  end
end
