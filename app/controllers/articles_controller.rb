class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # raise
  end

  def show
    fetch_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  private

  def fetch_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :context)
  end
end
