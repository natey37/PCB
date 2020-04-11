class RenameColumnInChargetags < ActiveRecord::Migration[6.0]
  def change
    rename_column :chargetags, :charge_id, :sentcharge_id

  end
end
