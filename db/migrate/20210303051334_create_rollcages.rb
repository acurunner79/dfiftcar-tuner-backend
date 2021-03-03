class CreateRollcages < ActiveRecord::Migration[6.1]
  def change
    create_table :rollcages do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
