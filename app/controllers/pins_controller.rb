class PinsController < ApplicationController

  before_action :set_post, only: [:new, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    if current_user
      @my_pins = current_user.pins
      @pins = Pin.all #TODO Add filter to remove user's pins
    else
      @pins = Pin.all
    end
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def new
    @user = current_user
    @board = Board.find(params[:board_id])
    @pin = @user.boards.pins.new
  end

  def create
    @user = current_user
    @board = Board.find(params[:board_id])
    @pin = current_user.boards.pins.new(pin_params)
    if @pin.save
      redirect_to user_board_path(@user, @board)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_path
  end

  def set_post
    @user = current_user
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :image_url)
    end
end
