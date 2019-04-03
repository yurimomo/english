namespace :article do
	desc 'article'
	task every_article: :environment do
		articles = Article.all
		article = articles.shuffle
		ArticleMailer.every_article(article).deliver
end
end