class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def confirm
  	@contact = Contact.new(contact_params)
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		ContactMailer.get_contact(@contact).deliver_now
  		flash[:notice] = "Your message was deliverd"
  		redirect_to dictionaries_path
  		# ContactMailer.confirm_contact(@contact).deliver_now
  	end
  end

  private

  def contact_params
  	params.require(:contact).permit(:email, :name, :content)
  end
end
