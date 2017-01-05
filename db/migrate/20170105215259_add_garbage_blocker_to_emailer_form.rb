class AddGarbageBlockerToEmailerForm < ActiveRecord::Migration[5.0]
  def change
    add_column :emailer_forms, :garbage_blocker, :string
  end
end
