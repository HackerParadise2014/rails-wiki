class Article < ActiveRecord::Base
  validates_uniqueness_of :title

  include FriendlyId
  friendly_id :title
end
