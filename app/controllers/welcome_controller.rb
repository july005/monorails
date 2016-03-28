class WelcomeController < ApplicationController


   def index
    articles = Article.order('created_at DESC').limit(1)
    @articles = Article.order('created_at DESC').limit(1)
  end
end
