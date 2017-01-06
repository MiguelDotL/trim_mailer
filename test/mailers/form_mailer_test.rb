require 'test_helper'

class FormMailerTest < ActionMailer::TestCase
  test "completed_form_email" do
    mail = FormMailer.completed_form_email
    assert_equal "Completed form email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
