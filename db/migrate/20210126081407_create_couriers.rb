class CreateCouriers < ActiveRecord::Migration[6.1]
  def change
    create_table :couriers do |t|
      t.string :key, null: false, blank: false
      t.string :name, null: false, blank: false
      t.string :tracking_number_digits, null: false, blank: false
      t.timestamps
    end
  end
end
