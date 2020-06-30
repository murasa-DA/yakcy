class LikesController < ApplicationController
  protect_from_forgery except: :destroy
  def create
    redirect_to root_url unless user_signed_in?
    @like = Like.new
    @like.user_id = current_user.id
    @like.article_id = params[:article_id]
    @like.save!
    redirect_to '/articles/'+ params[:article_id], notice: "いいねしました"
  end

  def destroy
    @like = Like.find_by(article_id: params[:article_id], user_id: current_user.id)
    @like.destroy
    redirect_to '/articles/'+ params[:article_id], notice: "いいねを取り消しました"
  end
end
