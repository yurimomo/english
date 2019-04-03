namespace :article do
	desc 'article'
	task every_article: :environment do
		articles = Article.all

		articles.each do |article|
			each_article = article.word
			each_article.shuffle

		ArticleMailer.every_article(article).deliver
	end
end