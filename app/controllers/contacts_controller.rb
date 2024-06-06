class ContactsController < ApplicationController

    def create
        name = params[:name]
        email = params[:email]
        content = params[:content]
        file = params[:file]

        ContactMailer.contact_email(name, email, content, file).deliver_now
        flash.now[:notice] = 'Your request has been sent!'
        render :result
    end
end
