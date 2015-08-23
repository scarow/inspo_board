class BoardsController < ApplicationController
  def new
    @errors = []
  end

  def create
    # TODO: perhaps use flash message for error instead
    @board = Board.new(params[:board])
    @board.user_id = current_user.id

    if @board.save
      redirect_to root_path
    else
      @errors = @board.errors.messages[:name]
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
  end
end
