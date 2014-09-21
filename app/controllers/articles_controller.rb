class ArticlesController < ApplicationController


  def index
    @articles = Article.order(:slug).paginate per_page: 20, page: params[:page]
  end


  def new
    @article = Article.new
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])
    if @article.update_attributes article_params
      redirect_to @article, notice: 'All good!'
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :version, :references, :protected)
  end
end
