class Feed < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :content, presence: true
end
