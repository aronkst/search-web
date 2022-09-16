class Search < ApplicationRecord
  validates :title, :url, :json, :next_page, :count_pages, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 1..10 }

  def set_html
    return if url.blank?

    # browser = Browser.new
    # browser.load(url)
    self.html = "123" # browser.html
    self.save
    # browser.quit
  end
end
