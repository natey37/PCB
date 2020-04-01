class CreateSentcharges < ActiveRecord::Migration[6.0]
  def change
    create_table :sentcharges do |t|
      t.integer :user_id
      t.integer :charge_id
      t.integer :sent_user_id
      t.integer :sentiment_score
      t.integer :likes

      t.timestamps
    end
  end
end
