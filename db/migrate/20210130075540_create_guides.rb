class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :tracking_number, null: false, blank: false
      t.string :status, null: false, blank: false, default: 'created'
      t.references :courier, index: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
