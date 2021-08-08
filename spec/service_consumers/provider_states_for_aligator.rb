Pact.provider_states_for 'Zoo App' do
  provider_state 'an alligator exists' do
    set_up do |params|
      Alligator.new(name: params.fetch('name')).save!
    end
  end
end
