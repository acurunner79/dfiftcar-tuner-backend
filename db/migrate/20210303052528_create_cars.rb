class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :year
      t.string :make
      t.string :model
      t.references :engine, null: false, foreign_key: true
      t.references :clutch, null: false, foreign_key: true
      t.references :differential, null: false, foreign_key: true
      t.references :hand_brake, null: false, foreign_key: true
      t.references :rollcage, null: false, foreign_key: true
      t.references :suspension, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
