require 'simplecov'
SimpleCov.start
require './spec/spec_helper'
require './lib/world_cup'
require 'pry'

RSpec.describe WorldCup do
  before do
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)

    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)

    @world_cup = WorldCup.new(2018, [@france, @croatia])
  end

  it 'should be an instance of WorldCup' do
    expect(@world_cup).to be_a WorldCup
  end

  it 'should add teams to a world cup' do
    expect(@world_cup.year).to eq(2018)
    expect(@world_cup.teams).to eq([@france, @croatia])
  end

  it 'should find active players by position' do
    expectation = @world_cup.active_players_by_position("midfielder")
    result = [@pogba, @modric]

    expect(expectation).to eq(result)

    @croatia.eliminated = true
    expectation = @world_cup.active_players_by_position("midfielder")
    result = [@pogba]

    expect(expectation).to eq(result)
  end

  it 'should find all players by position' do
    result = {
              "forward" => [@mbappe],
              "midfielder" => [@pogba, @modric],
              "defender" => [@vida]
              }

    expect(@world_cup.all_players_by_position).to eq(result)
  end

end
