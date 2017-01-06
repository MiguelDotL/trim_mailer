class ChangeGarbageCatcherToCountry < ActiveRecord::Migration[5.0]
  def change
    rename_column :emailer_forms, :garbage_blocker, :country
  end
end
