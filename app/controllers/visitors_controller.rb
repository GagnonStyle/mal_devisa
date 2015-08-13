class VisitorsController < ApplicationController
  def index
    @news = News.all
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end
end
