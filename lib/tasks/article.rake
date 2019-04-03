namespace :article do
	desc '発行'
	task every_article: :environment do
		articles = Article.all
		article = articles.shuffle
		ArticleMailer.every_article(article).deliver
end
end