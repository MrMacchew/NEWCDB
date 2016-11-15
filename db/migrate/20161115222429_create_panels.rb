class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.string :model
      t.string :serail
      t.string :mac

      t.timestamps null: false
    end
  end
end
