class AddTitleTextToComics < ActiveRecord::Migration
  def self.up
    add_column :comics, :title_text,    :string
  end

  def self.down
    remove_column :comics, :title_text,    :string
  end
end
