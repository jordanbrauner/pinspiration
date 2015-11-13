class PinsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
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
  end

  def new
    @pin = Pin.new
  end

  def create
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
    @pin = Pin.find(params[:id])
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :image_url)
    end
end
