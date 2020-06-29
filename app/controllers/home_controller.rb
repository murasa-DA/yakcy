class HomeController < ApplicationController
  def index
    @articles = Article.all.order(id: "DESC")
  end
end
