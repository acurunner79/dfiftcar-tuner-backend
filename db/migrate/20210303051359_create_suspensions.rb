class CreateSuspensions < ActiveRecord::Migration[6.1]
  def change
    create_table :suspensions do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
