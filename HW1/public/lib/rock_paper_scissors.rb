class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    strategy1 = player1[1].upcase
    strategy2 = player2[1].upcase
   
    raise self::NoSuchStrategyError, "Strategy must be one of R,P,S" unless (['R','S','P'].include?(strategy1) && ['R','S','P'].include?(strategy2))  

    if (strategy1=='P') && (strategy2=='S')
      return player2
    elsif (strategy1=='S') && (strategy2=='R')
      return player2
    elsif (strategy1=='R') && (strategy2=='P')
      return player2
    else
      return player1
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0].is_a?(String)
      return tournament
    else
      return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end
