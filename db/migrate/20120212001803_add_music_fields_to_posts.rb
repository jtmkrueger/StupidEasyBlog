class AddMusicFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mp3_url, :string

    add_column :posts, :ogg_url, :string

  end
end
