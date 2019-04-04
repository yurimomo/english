namespace :article do
	desc 'article'
	task send_article: :environment do
		articleone = Article.order("RANDOM()").first
		@article = articleone.word
		ArticleMailer.send_article(@article).deliver
	end
end