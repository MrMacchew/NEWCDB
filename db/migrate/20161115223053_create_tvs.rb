class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :make
      t.string :model
      t.string :serial
      t.string :tag
      t.string :mac

      t.timestamps null: false
    end
  end
end
