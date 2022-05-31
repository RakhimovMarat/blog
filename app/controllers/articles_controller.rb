class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new; end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    if @article.author && current_user && @article.author == current_user.username
      render action: 'edit'
    else
      flash[:notice] = "You can't edit this post!"
      redirect_to @article
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id]).delete
    redirect_to article_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :author).merge(author: current_user.username)
  end
end
