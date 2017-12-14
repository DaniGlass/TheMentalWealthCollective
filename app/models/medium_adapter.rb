module MediumAdapter
  class << self

  require "json"
  require "http"

 # Returns a parsed json object of the request
    def posts
      url = "https://medium.com/feed/@ccmarie.clark"
      response = HTTP.get(url).to_s
      @doc = Nokogiri.XML(response, 'UTF-8')
      @posts_titles = @doc.css("title")
      @posts_dates = @doc.css("pubDate")
     end

    def show_title1
      @title = @posts_titles[2].to_s.gsub("<title><![CDATA[", "<h2>")
      @title = @title.gsub("]]></title>", "</h2>")
      @title
    end

    def show_date1
      @posts_dates[0].to_s
    end

    def response_wo_cdata
      i_url = "https://medium.com/feed/@ccmarie.clark"
      i_response = HTTP.get(i_url).to_s.gsub("<![CDATA[", "")
      @i_doc = Nokogiri.HTML(i_response, 'UTF-8')
    end

    def get_item1
      @item = @i_doc.css("item")
      @item1 = @item[0]
    end

    def show_content1
      @item1.css("p").to_s
    end

    def show_image1
      img = @item1.css("img")
      img[0].to_s
    end

  end
end






