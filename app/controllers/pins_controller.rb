class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def new
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.save
    redirect_to @pin # TODO redirect to somewhere else?
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :image_url)
    end

end
