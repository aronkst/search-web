require 'uri'
require 'net/http'
require 'json'

class Find
  attr_reader :data

  def initialize(html, find)
    @html = html
    @find = find

    load
  end

  private

  def load
    puts body

    scraping_url = ENV['SCRAPING_URL'] || 'http://localhost:3001/find'
    uri = URI(scraping_url)

    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req.body = body
    res = http.request(req)

    @data = res.body
  rescue
    @data = nil
  end

  def body
    {
      html: @html,
      find: JSON.parse(@find)["find"]
    }.to_json
  end
end