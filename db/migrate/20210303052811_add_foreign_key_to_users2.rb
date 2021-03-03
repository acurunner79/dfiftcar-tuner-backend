class AddForeignKeyToUsers2 < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :car_id, :integer
  end
end
