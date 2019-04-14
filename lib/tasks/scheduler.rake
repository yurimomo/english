namespace :article do
	desc 'article'
	task every_article: :environment do
		@user = current_user
		@email = @user.email
		articleone = Article.order("RANDOM()").first
		@article = articleone.word
		ArticleMailer.every_article(@article,@email).deliver
	end
end