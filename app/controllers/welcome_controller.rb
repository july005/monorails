class WelcomeController < ApplicationController


   def index
    articles = Article.order('created_at DESC').limit(3)
    @articles = Article.order('created_at DESC').limit(3)
  end
end
