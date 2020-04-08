class AddUsernameColumnToSentcharges < ActiveRecord::Migration[6.0]
  def change
    add_column :sentcharges, :username, :string
  end

end
