class VideosController < ApplicationController
  def show
    @videos = Video.all

    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end
end
