class Search < ApplicationRecord
  validates :title, :url, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 0..10 }
end
