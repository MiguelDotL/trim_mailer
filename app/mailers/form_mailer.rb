class FormMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.form_mailer.completed_form_email.subject

  #
  def completed_form_email(form)
    @form = form

    mail  to: "miguel.d.loznao@gmail.com",
          from: "#{form.name} <#{form.email}>",
          subject: "TRIM AGENCY | Apprenticeship 2.0 Application | #{form.name}"
  end
end
