module MediumAdapter
  class << self

  require "json"
  require "http"

 # Returns a parsed json object of the request
    def posts
      url = "https://medium.com/feed/@ccmarie.clark"
      response = HTTP.get(url).to_s
      @doc = Nokogiri::XML(response)
      @doc.xpath("//item")
    end
  end
end
