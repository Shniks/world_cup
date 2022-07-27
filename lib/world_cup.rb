class WorldCup

  attr_reader :year,  :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
    find_active_players(active_players, position)
    active_players.flatten
  end

  def find_active_players(active_players, position)
    teams.each do |team|
      team_eliminated?(team, active_players, position)
    end
  end

  def team_eliminated?(team, active_players, position)
    if !team.eliminated?
      active_players << team.players_by_position(position)
    end
  end

  def all_players_by_position
    all_players = Hash.new { |k, v| k[v] = [] }
    teams.each do |team|
      players_by_position_each_team(team, all_players)
    end
    all_players
  end

  def players_by_position_each_team(team, all_players)
    team.players.each do |player|
      all_players[player.position] << player
    end
  end

end
