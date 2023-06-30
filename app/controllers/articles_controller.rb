class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create

  end

  def new

  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id)
  end

end
