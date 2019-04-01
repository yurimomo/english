class ArticleMailer < ApplicationMailer
	def send_article(article)
		@article = article
		mail(
			subject: 'read and loud at least 3 times!!',
			to: 'user@example',
			from: 'article@example.com')
	end
end

