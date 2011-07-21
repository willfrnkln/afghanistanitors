class AddAvatarColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :comics, :avatar_file_name,    :string
    add_column :comics, :avatar_content_type, :string
    add_column :comics, :avatar_file_size,    :integer
  end

  def self.down
    remove_column :comics, :avatar_file_name
    remove_column :comics, :avatar_file_type
    remove_column :comics, :avatar_file_size
  end
end
