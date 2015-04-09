class PressesController < ApplicationController
  def create
    @press = Press.new(press_params)
    @press.save
    @presses = Press.all
    respond_to do |format|
      format.js
      format.html
    end
  end

  private
  def press_params
    params.require(:press).permit(:name, :link)
  end
end