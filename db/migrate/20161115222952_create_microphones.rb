class CreateMicrophones < ActiveRecord::Migration
  def change
    create_table :microphones do |t|
      t.string :make
      t.string :serial

      t.timestamps null: false
    end
  end
end
