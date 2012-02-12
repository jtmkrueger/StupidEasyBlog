class Post < ActiveRecord::Base
  attr_accessible :title, :body, :post_type, :mp3_url, :ogg_url
end
