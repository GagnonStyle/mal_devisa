class VisitorsController < ApplicationController
  def index
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end
end
