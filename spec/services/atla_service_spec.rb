require 'rails_helper'

RSpec.describe AtlaService do
  describe 'Class Methods' do
    context '#tnation-search' do
      it 'rpeople from the fire nation' do
        fire_nation = AtlaService.new.nation_search("fire+nation")
        fn = fire_nation.first
        expect(fire_nation).to be_an(Array)

        expect(fn).to have_key(:_id)
        expect(fn[:_id]).to be_an(String)

        expect(fn).to have_key(:affiliation)
        expect(fn[:affiliation]).to be_an(String)

        expect(fn).to have_key(:allies)
        expect(fn[:allies]).to be_a(Array)

        expect(fn).to have_key(:enemies)
        expect(fn[:enemies]).to be_a(Array)

        expect(fn).to have_key(:name)
        expect(fn[:name]).to be_a(String)

        expect(fn).to have_key(:photoUrl)
        expect(fn[:photoUrl]).to be_a(String)
      end
    end
  end
end