class ContactMailer < ApplicationMailer

    def contact_email(name, email, content)
        @name = name
        @email = email
        @content = content

        mail(from: @email, to: 'service@aov-tech.com', subject: 'New Project Form Submission')
    end
end
