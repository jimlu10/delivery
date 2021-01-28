class CreateConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :configurations do |t|
      t.references :courier, index: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
