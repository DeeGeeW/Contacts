class ContactsController < ApplicationController
  def show
    contact = Contact.find_by(id: params["id"])
    render json: contact.as_json
  end
  
  def create
    if current_user
    contact = Contact.new(
      first_name: params["first_name"], 
      last_name: params["last_name"], 
      email: params["email"], 
      phone_number: params["phone_number"],
      user_id: current_user.id
    )
    contact.save
    render json: contact
    else
      render json: {message: "log in"}
    end
  end
  
  def index
    if current_user
      pp current_user
      contact = Contact.all
      render json: contact.as_json
    else
      render json: {message: "please log in"}
    end
  end

  def update
    contact_id = params["id"]
    contact = Contact.find(contact_id)

    contact.first_name = params["first_name"] || contact.first_name
    contact.last_name = params["last_name"] || contact.last_name
    contact.email = params["email"] || contact.email
    contact.phone_number = params["phone_number"] || contact.phone_number

    contact.save
    render json: contact
  end

  def destroy
    contact_id = params["id"]
    contact = Contact.find_by(id: contact_id)
    contact.destroy
    render json: {message: "contact successfully destroyed!"}
  end
end
