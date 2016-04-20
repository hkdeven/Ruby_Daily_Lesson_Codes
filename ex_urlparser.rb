# Make a ruby class that accepts
# a url as its initialize parameter
# and has a corresponding method for each part of it

class UrlParser
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def scheme
    colon = @url.index ":"
    @url[0...colon]
  end

  def domain
    something = @url.split("//")
    something[1].split(":").first
  end

  def port
    @url.split(":")[2].split("/")[0]
  end

  def path
    url_parts = @url.split("/")
    # p "url_parts is #{url_parts}"
    # p "url_parts[3..-1] is #{url_parts[3..-1]}"
    # p "url_parts[3..-1].join(\"/\") is #{url_parts[3..-1].join("/")}"
    # p "url_parts[3..-1].join(\"/\").split(\"?\") is #{url_parts[3..-1].join("/").split("?")}"
    url_parts[3..-1].join("/").split("?").first
  end

  def query_string
    @url.split("?").last.split("#").first if @url.include? "?"
  end

  def fragment_id
    if @url.include? "#"
      @url.split("#").last
    end
  end
end

def test_parser
  google = "http://www.google.com:80/"
  puts "Test for #{google}"
  test = UrlParser.new(google)
  puts test.scheme == "http"
  puts test.domain == "www.google.com"
  p test.port == "80"
  puts test.query_string == nil
  puts test.fragment_id == nil
  puts test.path == nil
  puts "=" * 20
  wyncode = "https://wyncode.co:443/testing/app.js?q=4#frag_id"
  puts "Test for #{wyncode}"
  test = UrlParser.new(wyncode)
  puts test.scheme == "https"
  puts test.domain == "wyncode.co"
  p test.port == "443"
  p test.query_string == "q=4"
  puts test.fragment_id == "frag_id"
  p test.path == "testing/app.js"
end

test_parser
