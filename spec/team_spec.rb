require 'simplecov'
SimpleCov.start
require './spec/spec_helper'
require './lib/team'

RSpec.describe Team do
  it 'should be an instance of an object' do
    team = Team.new("France")

    expect(team).to be_a Team
  end

  it 'should have attributes' do
    team = Team.new("France")

    expect(team.country).to eq("France")
    expect(team.eliminated?).to eq(false)

    team.eliminated = true

    expect(team.eliminated?).to eq(true)
    expect(team.players).to eq([])
  end



end
