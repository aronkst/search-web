class Search < ApplicationRecord
  validates :title, :url, :json, :count_pages, presence: true
  validates :count_pages, numericality: { only_integer: true, in: 1..10 }

  has_many :runs, dependent: :destroy

  after_save do
    format_json(:json, json)
    format_json(:values, values)
  end

  def format_json(column, value)
    json_formated = JSON.parse(value)
    json_formated = JSON.pretty_generate(json_formated)
    update_column(column, json_formated)
  end

  def set_html
    return if url.blank?

    htmlClass = Html.new(url, javascript)
    self.html = htmlClass.html
    save
  end
end
