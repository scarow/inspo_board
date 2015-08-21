class HomeController < ActionController::Base

  def index
    # TODO: change this to be user boards when users get set up
    @data = {
      boards: Board.all
    }
  end

end
