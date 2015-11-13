class BoardsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @user = current_user
    if current_user
      @boards = @user.boards.all
    end
    @pins = Pin.all
  end

  def show
    @user = current_user
  end

  def new
    @user = current_user
    @board = Board.new
  end

  def create
    @user = current_user
    @board = current_user.boards.new(board_params)
    if @board.save
      redirect_to user_boards_path(@user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_post
    @board = Board.find(params[:id])
  end



  private
    def board_params
      params.require(:board).permit(:title)
    end
end
