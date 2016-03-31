class WelcomeController < ApplicationController
  def index
    articles = Article.order('created_at DESC').limit(3)
    @articles = Article.order('created_at DESC').limit(3)
  end

  def secondlatestpost
  	@articles = Article.order("created_at DESC").offset(1).limit(1).first
 	end
end
