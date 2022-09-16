class Search < ApplicationRecord
  validates :title, :url, :json, :count_pages, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 1..10 }

  def set_html
    return if url.blank?

    browser = Browser.new(self.url, self.javascript)
    self.html = browser.html
    self.save
  end
end
