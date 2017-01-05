require 'test_helper'

class EmailerFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emailer_form = emailer_forms(:one)
  end

  test "should get index" do
    get emailer_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_emailer_form_url
    assert_response :success
  end

  test "should create emailer_form" do
    assert_difference('EmailerForm.count') do
      post emailer_forms_url, params: { emailer_form: { email: @emailer_form.email, name: @emailer_form.name, proj_repo: @emailer_form.proj_repo, proj_url: @emailer_form.proj_url } }
    end

    assert_redirected_to emailer_form_url(EmailerForm.last)
  end

  test "should show emailer_form" do
    get emailer_form_url(@emailer_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_emailer_form_url(@emailer_form)
    assert_response :success
  end

  test "should update emailer_form" do
    patch emailer_form_url(@emailer_form), params: { emailer_form: { email: @emailer_form.email, name: @emailer_form.name, proj_repo: @emailer_form.proj_repo, proj_url: @emailer_form.proj_url } }
    assert_redirected_to emailer_form_url(@emailer_form)
  end

  test "should destroy emailer_form" do
    assert_difference('EmailerForm.count', -1) do
      delete emailer_form_url(@emailer_form)
    end

    assert_redirected_to emailer_forms_url
  end
end
