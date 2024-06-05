class ContactMailer < ApplicationMailer

    def contact_email(name, email, content)
        @name = name
        @email = email
        @content = content

        mail(from: @email, to: Rails.application.credentials.gmail.address, subject: 'New Project Form Submission')
    end
end
