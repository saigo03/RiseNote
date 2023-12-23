class AddRankAndPointsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rank, :string
    add_column :users, :points, :integer
  end
end
