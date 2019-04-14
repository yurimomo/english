class ArticleMailer < ApplicationMailer
	# saveArticleした時のmethod
	def send_article(article, email)
		@article = article
		@email = email
		mail(
			subject: 'read and loud at least 3 times!!',
			to: @email,
			from: 'article@example.com')
	end
	# send 1 article every day
	def every_article(article, email)
		@article = article
		@email
		mail(
			subject: 'read and loud at least 3 times!!',
			to: @email,
			from: 'article@example.com')
	end
end
