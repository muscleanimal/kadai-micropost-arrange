class AddExplainToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :explain, :string
  end
end
