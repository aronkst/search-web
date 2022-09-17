require 'uri'
require 'net/http'
require 'json'

class Html
  attr_reader :html

  def initialize(url, javascript)
    @url = url
    @javascript = javascript

    load
  end

  private

  def load
    scraping_url = ENV['SCRAPING_URL'] || 'http://localhost:3001/html'
    uri = URI(scraping_url)

    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req.body = body
    res = http.request(req)

    @html = res.body
  rescue
    @html = nil
  end

  def body
    {
      html: {
        url: @url,
        javascript: @javascript
      }
    }.to_json
  end
end