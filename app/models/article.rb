class Article < ApplicationRecord
  is_impressionable
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    # where("body LIKE ?", "%#{search}%")
  end
end
