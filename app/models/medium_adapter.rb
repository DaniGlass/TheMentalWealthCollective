module MediumAdapter
  class << self

  require "json"
  require "http"

 # Returns a parsed json object of the request
    def posts
      url = "https://medium.com/feed/@ccmarie.clark"
      response = HTTP.get(url).to_s
      @doc = Nokogiri::XML(response)
      @all_posts = @doc.xpath("//item")
    end

    def show_post
      most_recent = @all_posts[0].to_s
      most_recent
    end
  end
end
