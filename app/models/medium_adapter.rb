module MediumAdapter
  class << self

  require "json"
  require "http"

 # Returns a parsed json object of the request
    def posts
      url = "https://medium.com/feed/@ccmarie.clark"
      response = HTTP.get(url)
      @doc = Nokogiri::XML(response, nil, 'UTF-8')
      @posts_titles = @doc.css("title")
      @posts_dates = @doc.css("pubDate")
      # content and images aren't working
      @posts_content = @doc.css("p")
     end

    def show_title1
      @title = @posts_titles[1].to_s
      @title = @title.gsub("<title>", "<h2>")
      @title = @title.gsub("</title>", "</h2>")
      @title
    end

    def show_date1
      @posts_dates[0].to_s
    end

    def show_content1
      # @doc
      @posts_content
      # "wtf"
    end

  end
end
