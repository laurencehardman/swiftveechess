class Game < ApplicationRecord
  has_one :winner, foreign_key: 'winner_id', class_name: 'Player'
  has_one :loser, foreign_key: 'loser_id', class_name: 'Player'

  after_create :update_rankings


  # Fixme - this method is buggy.
  def update_rankings
    winner = Player.find(winner_id)
    loser = Player.find(loser_id)

    if self.draw
      if (winner.rank - loser.rank) < 1
        winner.update_ranking 1
      elsif winner.rank - loser.rank > 1
        loser.update_ranking 1
      end
    else
      if winner.rank < loser.rank
        return
      else
        diff = winner.rank - loser.rank
        loser.update_ranking 1
        winner.update_ranking (diff/2)*-1
      end
    end


  end

end
