class ContactsController < ApplicationController

    def create
        name = params[:name]
        email = params[:email]
        content = params[:content]
        file = params[:file]
        country_code = params[:country_code]
        phone_number = params[:phone_number]
    
        full_phone_number = "+#{country_code} #{phone_number}"

        ContactMailer.contact_email(name, email, content, full_phone_number, file).deliver_now
        flash.now[:notice] = 'Your request has been sent!'
        render :result
    end
end
