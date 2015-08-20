class BoardsController < ApplicationController
  def new
  end

  def create
    @board = Board.new(params['board'])
    @board.save
    redirect_to root_path
  end
end
