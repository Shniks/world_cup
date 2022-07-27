require 'simplecov'
SimpleCov.start
require './spec/spec_helper'
require './lib/player'
require 'pry'

RSpec.describe Player do
  before do
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end

  it 'should be an instance of an object' do
    expect(@player).to be_a Player
  end

  it 'has attributes' do
    expect(@player.name).to eq("Luka Modric")
    expect(@player.position).to eq("midfielder")
  end

end
