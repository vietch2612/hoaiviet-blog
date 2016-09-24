class Article < ApplicationRecord
  # attr_accessible :title, :body
  is_impressionable

  has_many :comments

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    # where("body LIKE ?", "%#{search}%")
  end
end
