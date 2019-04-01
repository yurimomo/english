class ArticlesController < ApplicationController
  def index
  	@articles = Article.all.order(id: "desc")
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	if @article.save!
  		ArticleMailer.send_article(@article).deliver_now
  		redirect_to articles_path, notice: "articleを追加しました。"
  	end
  end

  def show
  	@article = Article.find_by(id: params[:id])
  end

  def edit
  	@article = Article.find_by(id: params[:id])
  end

  def destroy
    article = Article.find_by(id: params[:id])
    article.destroy
    redirect_to articles_path
   end

  private

  def article_params
  	params.require(:article).permit(:word)
  end

end
