class CreateInteractivekits < ActiveRecord::Migration
  def change
    create_table :interactivekits do |t|
      t.string :serial

      t.timestamps null: false
    end
  end
end
