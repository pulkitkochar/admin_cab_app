class Post < ActiveRecord::Base
  attr_accessible :time, :body, :title, :user_id
  has_many :comments
end