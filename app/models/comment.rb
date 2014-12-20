class Comment < ActiveRecord::Base
  belongs_to :feed
  validates :comment, length: { minimum: 2 }
end
