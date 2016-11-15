class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :model
      t.string :serial
      t.string :mac

      t.timestamps null: false
    end
  end
end
