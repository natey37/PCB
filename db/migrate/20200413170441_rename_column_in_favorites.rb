class RenameColumnInFavorites < ActiveRecord::Migration[6.0]
  def change
    rename_column :favorites, :charge_id, :sentcharge_id

  end
end
