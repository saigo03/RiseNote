class CreateDailyCreations < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_creations do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.integer :memos_count,default: 0
      t.integer :folders_count,default: 0

      t.timestamps
    end
  end
end
