class Post < ActiveRecord::Base
      has_many :comments
      has_many :imgs
      has_many :imgcs
end
