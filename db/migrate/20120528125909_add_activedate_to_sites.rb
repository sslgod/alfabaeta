class AddActivedateToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :active_date, :date
  end

  def self.down
    remove_column :sites, :active_date
  end
end

