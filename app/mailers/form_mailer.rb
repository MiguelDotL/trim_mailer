class FormMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #   en.form_mailer.completed_form_email.subject
  def completed_form_email(form)
    @form = form
    applicant = "#{form.name} <#{form.email}>"

    mail  to: ENV['TRIM_EMAIL'],
          bcc: applicant, # make sure that my application gets sent
          from: applicant,
          subject: "TRIM AGENCY | Apprenticeship 2.0 Application | #{form.name}"
  end
end
