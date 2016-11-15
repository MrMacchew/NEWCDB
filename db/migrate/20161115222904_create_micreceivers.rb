class CreateMicreceivers < ActiveRecord::Migration
  def change
    create_table :micreceivers do |t|
      t.string :receiver

      t.timestamps null: false
    end
  end
end
