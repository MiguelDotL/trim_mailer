json.extract! emailer_form, :id, :name, :email, :proj_repo, :proj_url, :created_at, :updated_at
json.url emailer_form_url(emailer_form, format: :json)