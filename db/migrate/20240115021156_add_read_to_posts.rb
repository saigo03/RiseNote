class AddReadToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :read, :boolean, default: false
  end
end
