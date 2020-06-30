class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    #被いいね数測定
    @liked = 0
    @posted_articles = Article.where(user_id: params[:id])
    @posted_articles.each do |p|
      @liked += p.liked_users.count
    end
  end
end
