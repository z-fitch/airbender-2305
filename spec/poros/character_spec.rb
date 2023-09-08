require 'rails_helper'

RSpec.describe Character do
  it 'exists' do
    attributes = {
      name: 'Azula',
      allies: ["Ozai", "Zuko "],
      enemies: ["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "],
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)",
    }

    character = Character.new(attributes)

    expect(character).to be_a(Character)
    expect(character.allies).to eq("Ozai, Zuko ")
    expect(character.enemies).to eq("Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa ")
    expect(character.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(character.name).to eq('Azula')
  end
end