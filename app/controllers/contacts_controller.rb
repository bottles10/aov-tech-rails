class ContactsController < ApplicationController

    def create
        name = params[:name]
        email = params[:email]
        content = params[:content]

        ContactMailer.contact_email(name, email, content).deliver_now
        flash[:notice] = 'Your request has been sent!'
        redirect_to home_index_url
    end
end
