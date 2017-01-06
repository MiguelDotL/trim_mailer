# Preview all emails at http://localhost:3000/rails/mailers/form_mailer
class FormMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/form_mailer/completed_form_email
  def completed_form_email
    FormMailer.completed_form_email
  end

end
