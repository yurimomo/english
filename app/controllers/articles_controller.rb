class ArticlesController < ApplicationController
  before_action :set_article,only: [:show, :edit, :update, :destroy]

  def index
  	@articles = Article.all.order(id: 'desc')
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = current_user.articles.new(article_params)
  	if @article.save!
  		ArticleMailer.send_article(@article).deliver_now
  		redirect_to articles_path, notice: "articleを追加しました。"
  	end
  end

  def show
  end

  def edit
  end

  def destroy
    article.destroy
    redirect_to articles_path
   end

  private

  def article_params
  	params.require(:article).permit(:word)
  end

  def set_article
   @article = current_user.articles.find(params[:id])
 end


end
