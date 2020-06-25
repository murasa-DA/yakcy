class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save!
    redirect_to "/", notice:"記事登録OK"
  end

  private
  def article_params
    params.require(:article).permit(:article_title, :article_data)
  end
end
