class Player < ApplicationRecord
  # authenticates_with_sorcery!
  has_and_belongs_to_many :games

  def game_count
    Game.where(winner_id: self.id).count + Game.where(loser_id: self.id).count
  end

  def update_ranking difference
    if difference > 0
      for i in 1..difference
        player = Player.find_by(rank: self.rank - i)
        player.rank -= 1
        player.save
      end
      self.rank += 1
      save
    else
      for i in difference..-1
        player = Player.find_by(rank: self.rank - i)
        player.rank += 1
        player.save
      end
      self.rank -= 1
      save
    end
  end
end
