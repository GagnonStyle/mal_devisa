class NewsController < ApplicationController
  before_filter :get_all_news

  def create
    @new_news = News.new(news_params)
    @new_news.save

    render action: 'index'
  end

  def destroy
    @old_news = News.find(params[:id])
    @old_news.destroy

    render action: 'index'
  end

  def index
    respond_to do |format|
      request.xhr? ? format.js : format.html
    end
  end

  private
  def get_all_news
    @news = News.all
  end
  def news_params
    params.require(:news).permit(:title, :body)
  end
end