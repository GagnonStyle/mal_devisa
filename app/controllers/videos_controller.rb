class VideosController < ApplicationController
  def index
    @videos = Video.all

    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end

  def create
    @video = Video.new(video_params)
    @video.save
    @videos = Video.all

    render action: 'index'
  end

  def destroy
    Video.find(params[:id]).destroy
    @videos = Video.all

    render action: 'index'
  end

  private
  def video_params
    params.require(:video).permit(:name, :url)
  end
end
