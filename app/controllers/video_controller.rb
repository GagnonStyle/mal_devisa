class VideoController < ApplicationController
  def show
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end
end
