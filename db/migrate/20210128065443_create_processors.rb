class CreateProcessors < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|
      t.string :key, null: false, blank: false
      t.string :name, null: false, blank: false
      t.string :type
      t.timestamps
    end
  end
end
