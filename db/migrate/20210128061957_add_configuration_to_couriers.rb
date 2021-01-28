class AddConfigurationToCouriers < ActiveRecord::Migration[6.1]
  def change
    add_reference :couriers, :configuration, index: true, null: true,foreign_key: true
  end
end
