require './spec/spec_helper'
require './lib/player'
require 'pry'

RSpec.describe Player do
  it 'should be an instance of an object' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player).to be_a Player
  end

  it 'has attributes' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player.name).to eq("Luka Modric")
    expect(player.position).to eq("midfielder")
  end

end
