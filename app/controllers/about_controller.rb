class AboutController < ApplicationController
  def show
    @presses = Press.all
    @bio = Bio.first
  end
end
