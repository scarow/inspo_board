class BoardsController < ApplicationController
  def new
    @errors = []
  end

  def create
    # TODO: perhaps use flash message for error instead
    @board = Board.new(params['board'])
    if @board.save
      redirect_to root_path
    else
      @errors = @board.errors.messages[:name]
      render :new
    end
  end
end
