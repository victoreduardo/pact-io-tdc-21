require 'rails_helper'
require_relative 'pact_helper'

describe AnimalServiceClient, pact: true do
  subject { AnimalServiceClient.new }

  before { AnimalServiceClient.base_uri 'localhost:1234' }

  describe 'get_alligator' do
    before do
      animal_service.given('an alligator exists', { name: 'Betty' })
                    .upon_receiving('a request for an alligator')
                    .with(method: :get, path: '/alligators', query: '')
                    .will_respond_with(
                      status: 200,
                      headers: { 'Content-Type' => 'application/json; charset=utf-8' },
                      body: [{ name: 'Betty' }]
                    )
    end

    it 'returns a alligator' do
      expect(subject.get_alligator).to eq(Alligator.new(name: 'Betty'))
    end
  end
end
