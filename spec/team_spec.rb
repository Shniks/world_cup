require 'simplecov'
SimpleCov.start
require './spec/spec_helper'
require './lib/team'

RSpec.describe Team do
  before do
    @team = Team.new("France")
  end

  it 'should be an instance of an object' do
    expect(@team).to be_a Team
  end

  it 'should have attributes' do
    expect(@team.country).to eq("France")
    expect(@team.eliminated?).to eq(false)

    @team.eliminated = true

    expect(@team.eliminated?).to eq(true)
    expect(@team.players).to eq([])
  end

  it 'can add players' do
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    @team.add_player(mbappe)
    @team.add_player(pogba)

    expect(@team.players).to eq([mbappe, pogba])  
  end



end
