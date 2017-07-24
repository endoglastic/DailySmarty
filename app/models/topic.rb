class Topic < ApplicationRecord
  has_many :posts
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_uniqueness_of :slug
  validates_presence_of :title, :slug
end
