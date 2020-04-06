class ChangeScoreToBeFloatInSentcharges < ActiveRecord::Migration[6.0]
    def up
      change_column :sentcharges, :sentiment_score, :float
    end
  
    def down
      change_column :sentcharges, :sentiment_score, :integer
    end
end
