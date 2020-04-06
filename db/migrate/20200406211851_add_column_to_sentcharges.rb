class AddColumnToSentcharges < ActiveRecord::Migration[6.0]
  def change
    add_column :sentcharges, :message, :string
  end
end
