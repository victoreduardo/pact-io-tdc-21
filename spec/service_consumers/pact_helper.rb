require 'pact/provider/rspec'
require 'pact/message'
require 'rails_helper'
require './spec/service_consumers/provider_states_for_aligator'

Pact.service_provider "Animal Service" do
  app_version '3.0.0'
  honours_pact_with 'Zoo App' do
    pact_uri "#{Rails.root}/spec/pacts/zoo_app-animal_service.json"
  end
end
