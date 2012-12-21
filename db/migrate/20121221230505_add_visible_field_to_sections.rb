class AddVisibleFieldToSections < ActiveRecord::Migration
  def self.up
    add_column :sections, :visible, :boolean, :default => true
  end

  def self.down
    remove_column :sections, :visible
  end
end
