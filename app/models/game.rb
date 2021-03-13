class Game < ApplicationRecord
  has_one :winner, foreign_key: 'winner_id', class_name: 'Player'
  has_one :loser, foreign_key: 'loser_id', class_name: 'Player'
end
