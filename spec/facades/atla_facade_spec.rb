require 'rails_helper'

RSpec.describe AtlaFacade do
  describe 'Instance Methods', :vcr do
    it 'exists' do
      facade1 = AtlaFacade.new("fire+nation")

      expect(facade1.nation_name).to eq("fire+nation")
      expect(facade1).to be_a(AtlaFacade)
      expect(facade1.service).to be_a(AtlaService)
    end
  end
end