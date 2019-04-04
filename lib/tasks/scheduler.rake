namespace :article do
	desc 'article'
	task every_article: :environment do
		articleone = Article.order("RANDOM()").first
		@article = articleone.word
		ArticleMailer.every_article(@article).deliver
	end
end