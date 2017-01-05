class CreateEmailerForms < ActiveRecord::Migration[5.0]
  def change
    create_table :emailer_forms do |t|
      t.string :name
      t.string :email
      t.string :proj_repo
      t.string :proj_url

      t.timestamps
    end
  end
end
