class CreateMediaplayers < ActiveRecord::Migration
  def change
    create_table :mediaplayers do |t|
      t.string :type
      t.stringmodel :make
      t.string :serial

      t.timestamps null: false
    end
  end
end
