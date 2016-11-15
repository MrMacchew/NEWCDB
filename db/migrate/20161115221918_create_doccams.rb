class CreateDoccams < ActiveRecord::Migration
  def change
    create_table :doccams do |t|
      t.string :make
      t.string :model
      t.string :serial
      t.string :wtag

      t.timestamps null: false
    end
  end
end
