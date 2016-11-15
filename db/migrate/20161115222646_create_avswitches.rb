class CreateAvswitches < ActiveRecord::Migration
  def change
    create_table :avswitches do |t|
      t.string :model
      t.string :mac
      t.string :serial

      t.timestamps null: false
    end
  end
end
