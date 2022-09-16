class Search < ApplicationRecord
  validates :title, :url, :json, :next_page, :count_pages, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 1..10 }
end
