class ContactMailer < ApplicationMailer
    default from: Rails.application.credentials.registered_domain_email

    def contact_email(name, from_email, content, file=nil)
        @name = name
        @from_email = from_email
        @content = content

        attachments[file.original_filename] = file.read if file.present?

        mail(subject: 'Aov-Tech New Project Form Submission', to: Rails.application.credentials.gmail.address, from: Rails.application.credentials.registered_domain_email, track_opens: 'true', message_stream: 'outbound')
    end
end
