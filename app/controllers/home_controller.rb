class HomeController < ApplicationController

  def index
    @data = {
      boards: Board.where(user_id: current_user.id)
    }
  end

end
