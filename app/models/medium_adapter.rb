module MediumAdapter
  class << self

  require "json"
  require "http"

    def posts
      url = "https://medium.com/feed/@ccmarie.clark"
      response = HTTP.get(url).to_s
      @doc = Nokogiri.XML(response, 'UTF-8')
      @posts_titles = @doc.css("title")
      @posts_dates = @doc.css("pubDate")
     end

    def response_wo_cdata
      i_url = "https://medium.com/feed/@ccmarie.clark"
      i_response = HTTP.get(i_url).to_s.gsub("<![CDATA[", "")
      @i_doc = Nokogiri.HTML(i_response, 'UTF-8')
    end

#content for the most recent post

    # this is the first post WITHOUT the CDATA in the response
    def get_item1
      @item = @i_doc.css("item")
      @item1 = @item[0]
    end

    def show_title1
      @title = @posts_titles[2].to_s.gsub("<title><![CDATA[", "<h3>")
      @title = @title.gsub("]]></title>", "</h3>")
      @title
    end

    def show_date1
      @posts_dates[0].to_s
    end

    def show_content1
      @item1.css("p").to_s
    end

    def show_image1
      img = @item1.css("img")
      img[0].to_s
    end

#content for the 2nd most recent post

  def get_item2
      @item2 = @item[1]
    end

    def show_title2
      @title2 = @posts_titles[3].to_s.gsub("<title><![CDATA[", "<h3>")
      @title2 = @title2.gsub("]]></title>", "</h3>")
      @title2
    end

    def show_date2
      @posts_dates[1].to_s
    end

    def show_content2
      @item2.css("p").to_s
    end

    def show_image2
      img = @item2.css("img")
      img[0].to_s
    end

#content for the 3rd most recent post
    def get_item3
      @item3 = @item[2]
    end

    def show_title3
      @title3 = @posts_titles[4].to_s.gsub("<title><![CDATA[", "<h3>")
      @title3 = @title3.gsub("]]></title>", "</h3>")
      @title3
    end

    def show_date3
      @posts_dates[2].to_s
    end

    def show_content3
      @item3.css("p").to_s
    end

    def show_image3
      img = @item3.css("img")
      img[0].to_s
    end

#content for the 4th most recent post
    def get_item4
      @item4 = @item[3]
    end

    def show_title4
      @title4 = @posts_titles[5].to_s.gsub("<title><![CDATA[", "<h3>")
      @title4 = @title4.gsub("]]></title>", "</h3>")
      @title4
    end

    def show_date4
      @posts_dates[3].to_s
    end

    def show_content4
        @item4.css("p").to_s
    end

    def show_image4
      img = @item4.css("img")
      img[0].to_s
    end

    #content for the 5th most recent post
    def get_item5
      @item5 = @item[4]
    end

    def show_title5
      @title5 = @posts_titles[6].to_s.gsub("<title><![CDATA[", "<h3>")
      @title5 = @title5.gsub("]]></title>", "</h3>")
      @title5
    end

    def show_date5
      @posts_dates[4].to_s
    end

    def show_content5
        @item5.css("p").to_s
    end

    def show_image5
      img = @item5.css("img")
      img[0].to_s
    end

  end
end






