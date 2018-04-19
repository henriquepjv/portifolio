class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      FormMailer.contact_msg(@contact.email, @contact.subject, @contact.body).deliver_now
      redirect_to root_path
    else
      flash[:notice] = 'Preencha todos os campos'
      render :new
    end
  end

  def about
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :subject, :body)
  end
end
