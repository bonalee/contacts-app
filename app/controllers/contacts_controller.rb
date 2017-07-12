class ContactsController < ApplicationController
  def contact_index
    @contacts = Contact.all
    render "all_contacts.html.erb"
  end

  def create_contact
    contact = Contact.new(
      first_name: params[:form_first_name],
      last_name: params[:form_last_name],
      email: params[:form_email],
      phone_number: params[:form_phone_number]
      )
    contact.save
    redirect_to "/contacts"
    flash[:success] = "Contact added!"
  end

  def new_contact
    render "contact_form.html.erb"
  end

  def show_contact
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "contact_info.html.erb"
  end

  def edit_contact
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "edit_contact.html.erb"
  end

  def update_contact
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:form_first_name]
    @contact.last_name = params[:form_last_name]
    @contact.email = params[:form_email]
    @contact.phone_number = params[:form_phone_number]
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
    flash[:success] = "Contact updated!"
  end

  def delete_contact
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    redirect_to "/contacts"
    flash[:success] = "Contact deleted!"
  end
end
