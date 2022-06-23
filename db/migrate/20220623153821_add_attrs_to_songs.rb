class AddAttrsToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :artistname, :string
  end
end
