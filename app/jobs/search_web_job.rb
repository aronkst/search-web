class SearchWebJob < ApplicationJob
  queue_as :default

  def perform(run_id)
    @run = Run.find(run_id)
    @search = @run.search

    start
  end

  private

  def start
    url = @search.url
    page = 1

    while page <= @search.count_pages && url.present?
      html = Html.new(url, @search.javascript)
      data = Find.new(html, @search.json).data
      final = Show.new(data, @search.values).final

      if @search.count_pages > 1 && @search.next_page?
        data = JSON.parse(data)
        if data.present? && data[@search.next_page].present?
          url = data[@search.next_page]
        else
          url = nil
        end
      end

      @run.run_values.create!(values: final.to_json, page: page)

      page += 1
    end

    @run.update!(finish: true)
  end
end
