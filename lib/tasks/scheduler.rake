namespace :article do
	desc 'article'
	task every_article: :environment do
		article = Article.order("RANDOM()").first
		article.word
		ArticleMailer.every_article(article).deliver
	end
end