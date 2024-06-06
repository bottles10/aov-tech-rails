class ContactsController < ApplicationController

    def create
        name = params[:name]
        email = params[:email]
        content = params[:content]

        ContactMailer.contact_email(name, email, content).deliver_now
        flash.now[:notice] = 'Your request has been sent!'
        render :result
    end
end
