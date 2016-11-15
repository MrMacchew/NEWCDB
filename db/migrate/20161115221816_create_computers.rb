class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name
      t.string :wtag
      t.string :make
      t.string :model
      t.string :serial

      t.timestamps null: false
    end
  end
end
