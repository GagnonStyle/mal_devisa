class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save

    @photos = Photo.all
    render action: 'index'
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.remove_image!
    @photo.destroy

    @photos = Photo.all
    render action: 'index'
  end

  private
    def photo_params
      params.require(:photo).permit(:name, :image)
    end
end
