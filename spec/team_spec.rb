require 'simplecov'
SimpleCov.start
require './spec/spec_helper'
require './lib/team'

RSpec.describe Team do
  it 'should be an instance of an object' do
    team = Team.new("France")

    expect(team).to be_a Team 
  end



end
