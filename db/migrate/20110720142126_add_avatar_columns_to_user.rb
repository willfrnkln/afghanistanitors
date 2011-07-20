class AddAvatarColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :comics, :avatar_file_name, :string
  end

  def self.down
    remove_column :comics, :avatar_file_name
  end
end
