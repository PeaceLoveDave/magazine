class ArticlesController < ApplicationController

	before_action :set_breaking_news, :only=>[:show, :category]

  def show
  	@article = Article.find(params[:id])

  	@category = @article.category
  end

  def category
  	@category = params[:category]
  	@category_articles = Article.where( :category => params[:category] )
  						.order('created_at desc')
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new( article_params )
  	if @article.save
	  	redirect_to article_path(@article)
	else
		render 'new.html.erb'
	end

  end

  def destroy
  end

  def index
  	@articles_all = Article.all.order('created_at desc').limit(5)
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  		if @article.update( article_params )
	  	redirect_to article_path(@article)
	else
		render 'edit.html.erb'
	end
  end

  private
  	def article_params
  		params.require(:article).permit(:content, :title, :author, :category)
  	end

  def set_breaking_news
  	@breaking_news_items = Article.order('created_at desc').limit(5)
  end
end
