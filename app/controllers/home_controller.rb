class HomeController < ApplicationController

  def index
    # TODO: change this to be user boards when users get set up
    @data = {
      boards: Board.all
    }
  end

end
