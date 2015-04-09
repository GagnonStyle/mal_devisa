class BioController < ApplicationController
  def update
    @bio = Bio.find(params[:id])
    @bio.update(bio_params)
    respond_to do |format|
      format.js
    end
  end

  private
  def bio_params
    params.require(:bio).permit(:text)
  end
end