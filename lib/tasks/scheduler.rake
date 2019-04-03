namespace :article do
	desc 'article'
	task every_article: :environment do
		articles = Article.all
		article_shuffle = articles.shuffle
		article = article_shuffle.word
		ArticleMailer.every_article(article).deliver
	end
end