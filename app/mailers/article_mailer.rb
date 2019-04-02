class ArticleMailer < ApplicationMailer
	def send_article(article)
		@article = article
		mail(
			subject: 'read and loud at least 3 times!!',
			to: 'yuri715lily_momo@yahoo.co.jp',
			from: 'article@example.com')
	end
end

