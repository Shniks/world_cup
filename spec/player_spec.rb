require './spec/spec_helper'
require './lib/player'
require 'pry'

RSpec.describe Player do
  describe 'Check if it exists' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player).to be_a Player
  end

end 
