class ContactsController < ApplicationController
  def get_one_contact
    contact = Contact.last
    # render json: {id: contact.id, title: contact.title, chef: contact.chef}
    render json: contact.as_json
  end

  def get_all_contacts
    contact = Contact.all
    render json: contact.as_json
  end
end
