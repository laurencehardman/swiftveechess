class AddDrawToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :draw, :boolean
  end
end
