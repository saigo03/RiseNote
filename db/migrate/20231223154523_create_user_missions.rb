class CreateUserMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_missions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
