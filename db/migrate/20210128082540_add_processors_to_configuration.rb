class AddProcessorsToConfiguration < ActiveRecord::Migration[6.1]
  def change
    add_column :configurations, :create_processor_id, :bigint, null: true
    add_foreign_key :configurations, :processors, column: :create_processor_id, null: true

    add_column :configurations, :tracking_processor_id, :bigint
    add_foreign_key :configurations, :processors, column: :tracking_processor_id
  end
end
