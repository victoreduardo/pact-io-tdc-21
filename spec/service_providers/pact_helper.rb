require "pact/consumer/rspec"

Pact.service_consumer "Zoo App" do
  has_pact_with "Animal Service" do
    mock_service :animal_service do
      port 1234
      pact_specification_version '3.0.0'
    end
  end
end
