class CreateClutches < ActiveRecord::Migration[6.1]
  def change
    create_table :clutches do |t|
      t.string :stage
      t.string :brand

      t.timestamps
    end
  end
end
