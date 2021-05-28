class ArticlesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :edit]

  def index
    @articles = Article.all
    @articles = Article.page(params[:page]).reverse_order
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def article_params
    params.require(:article).permit(:title, :article_image, :description)
  end

end
