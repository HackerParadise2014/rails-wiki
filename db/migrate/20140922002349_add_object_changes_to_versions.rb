class AddObjectChangesToVersions < ActiveRecord::Migration
  def change
    add_column :versions, :object_versions, :text
  end
end
