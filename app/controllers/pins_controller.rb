class PinsController < ApplicationController

  before_action :set_post, only: [:new, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @user = current_user
    if current_user
      @pins = Pin.all #TODO Add filter to remove user's pins
    else
      @pins = Pin.all
    end
  end

  def show
    @user = current_user
    @pin = @user.pins.find(params[:pin_id])
  end

  def new
    @user = current_user
    @pin = @user.pins.new
  end

  def create
    @user = current_user
    @pin = current_user.pins.new(pin_params)
    if @pin.save
      redirect_to pins_path
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
