class Article < ApplicationRecord
  # attr_accessible :title, :body
  is_impressionable
  acts_as_taggable
  acts_as_taggable_on :skills

  has_many :comments, dependent: :destroy


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    # where("body LIKE ?", "%#{search}%")
  end
end
