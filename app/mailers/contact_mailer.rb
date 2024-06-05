class ContactMailer < ApplicationMailer

    def contact_email(name, from_email, content)
        @name = name
        @from_email = from_email
        @content = content

        mail(from: from_email, to: Rails.application.credentials.gmail.address, subject: 'New Project Form Submission')
    end
end
