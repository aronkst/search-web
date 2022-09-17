class Search < ApplicationRecord
  validates :title, :url, :json, :count_pages, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 1..10 }

  def set_html
    return if url.blank?

    htmlClass = Html.new(self.url, self.javascript)
    self.html = htmlClass.html
    self.save
  end
end
