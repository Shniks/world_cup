require 'pry'
class Team

  attr_reader :country, :players
  attr_accessor :eliminated

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    return true if eliminated == true
    false
  end

  def add_player(player)
    players << player
  end

  def players_by_position(position)
    players.select { |player| player.position == position }
  end

end
