class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|

      t.integer :winner_id, foreign_key: {to_table: 'players'}, null: false
      t.integer :loser_id, foreign_key: {to_table: 'players'}, null: false

      t.timestamps
    end
  end
end
