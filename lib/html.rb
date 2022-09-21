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
    scraping_host = ENV['SCRAPING_HOST'] || 'localhost:3001'
    scraping_path = "http://#{scraping_host}/html"
    uri = URI(scraping_path)

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
