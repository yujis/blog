class Content < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  acts_as_commentable
end
