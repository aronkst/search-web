class Search < ApplicationRecord
  validates :title, :url, :javascript, :json, :next_page, :count_pages, :finish, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 0..10 }
end
