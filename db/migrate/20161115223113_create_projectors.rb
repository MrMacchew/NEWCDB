class CreateProjectors < ActiveRecord::Migration
  def change
    create_table :projectors do |t|
      t.string :make
      t.string :model
      t.string :mac
      t.string :serial

      t.timestamps null: false
    end
  end
end
