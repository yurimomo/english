class ContactMailer < ApplicationMailer

# get request from user
	def get_contact(contact)
		@contact = contact
		mail(
			subject: 'get contact',
			to: 'yuri715lily_momo@yahoo.co.jp',
			from: 'article_contact.exaple.com',
			content: @contact.content)
	end

# to send email to user
	# def confirm_contact(contact)
	# 	@contact = contact
	# 	mail(
	# 		subject: 'Thank you for your opinion',
	# 		to: '@user.email',
	# 		from: 'article@example.com')
	# end
end
