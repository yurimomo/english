namespace :article do
	desc 'article'
	task every_article: :environment do
		article = Article.order("RANDOM()").map{|a| [a.word]}
		ArticleMailer.every_article(article).deliver
	end
end