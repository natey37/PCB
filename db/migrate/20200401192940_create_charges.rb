class CreateCharges < ActiveRecord::Migration[6.0]
  def change
    create_table :charges do |t|
      t.string :message

      t.timestamps
    end
  end
end
