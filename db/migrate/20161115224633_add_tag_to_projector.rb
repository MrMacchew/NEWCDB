class AddTagToProjector < ActiveRecord::Migration
  def change
    add_column :projectors, :tag, :string
  end
end
