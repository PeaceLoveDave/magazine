class ArticlesController < ApplicationController

  def show
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.create( article_params )

  	redirect_to article_path(@article)
  end

  def index
  end

  def edit
  end

  private
  	def article_params
  		params.require(:article).permit(:content, :title, :author, :category)
  	end
end
