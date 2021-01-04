class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:name, :email, :contact))
    if @contact.save
      redirect_to new_contact_path
    else
      render :new
    end
  end
end
