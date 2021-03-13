class Player < ApplicationRecord
  # authenticates_with_sorcery!
  has_and_belongs_to_many :games

  def game_count
    Game.where(winner_id: self.id).count + Game.where(loser_id: self.id).count
  end
end
