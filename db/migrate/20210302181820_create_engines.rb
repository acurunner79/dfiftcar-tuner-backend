class CreateEngines < ActiveRecord::Migration[6.1]
  def change
    create_table :engines do |t|
      t.string :engine_code
      t.string :horsepower

      t.timestamps
    end
  end
end
