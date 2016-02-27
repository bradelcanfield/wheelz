class Route < ActiveRecord::Base
  attr_accessor :title, :content

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end
end
