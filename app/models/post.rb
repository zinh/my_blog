class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :posts
end
