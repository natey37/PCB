class AddColumnToChargetags < ActiveRecord::Migration[6.0]
  def change
    add_column :chargetags, :tagtype, :string
  end
end
