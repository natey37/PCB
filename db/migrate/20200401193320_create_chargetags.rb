class CreateChargetags < ActiveRecord::Migration[6.0]
  def change
    create_table :chargetags do |t|
      t.integer :charge_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
