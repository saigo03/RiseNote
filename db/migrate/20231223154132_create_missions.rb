class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.text :completion_criteria
      t.integer :point_value

      t.timestamps
    end
  end
end
