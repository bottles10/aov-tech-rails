class ContactMailer < ApplicationMailer

    def contact_email(name, from_email, content, file=nil)
        @name = name
        @from_email = from_email
        @content = content

        attachments[file.original_filename] = file.read if file.present?

        mail(from: from_email, to: Rails.application.credentials.gmail.address, subject: 'Aov-Tech New Project Form Submission')
    end
end
