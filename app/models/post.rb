class Post < ActiveRecord::Base
  attr_accessible :title, :body, :post_type
end
