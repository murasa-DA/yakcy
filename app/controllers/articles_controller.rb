class ArticlesController < ApplicationController
  def new
    redirect_to root_url unless user_signed_in?
    @article = Article.new
  end

  def create
    redirect_to root_url unless user_signed_in?
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.save!
    redirect_to "/", notice:"記事登録OK"
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:article_title, :article_data)
  end
end
