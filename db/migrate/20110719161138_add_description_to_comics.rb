class AddDescriptionToComics < ActiveRecord::Migration
  def self.up
    add_column :comics, :description, :string
  end

  def self.down
    remove_column :comics, :description
  end
end
