class ArticlesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    
  end

  def latest
    articles = Article.order('created_at DESC').limit(4)
    @articles = Article.order('created_at DESC').limit(4)
  end

  def new
  	@article = current_user.articles.build
	end

  def edit
    @article = Article.find(params[:id])
  end
 
	def create
    @article = current_user.articles.build(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

 # def self.secondlatestpost
 #   order("published_at DESC").offset(1).limit(1).first
 # end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
 
private
  def article_params
    params.require(:article).permit(:title, :text, :image, :user_id, :subtitle, :tag_list, :bootsy_image_gallery_id)
  end

end

