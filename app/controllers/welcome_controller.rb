class WelcomeController < ApplicationController
  

  def index
    articles = Article.order('created_at DESC').limit(4)
    @articles = Article.order('created_at DESC').limit(4)
  end  

  def latest
    articles = Article.order('created_at DESC').limit(4).offset(1)
    @articles = Article.order('created_at DESC').limit(4).offset(1)
  end

  def secondlatestpost
  	@articles = Article.order("created_at DESC").offset(1).limit(1).first
 	end


end
