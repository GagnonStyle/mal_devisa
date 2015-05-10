class AboutController < ApplicationController
  def show
    @presses = Press.all
    @bio = Bio.first
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end
end
