class PlayersController < ApplicationController

  def index
    @players = Player.all.sort_by {|player| player.rank}
  end

end
