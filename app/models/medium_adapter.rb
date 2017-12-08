module MediumAdapter
  class << self

  require "json"
  require "http"

 # Returns a parsed json object of the request
    def posts
      url = "https://api.medium.com/v1/users/19b66064ca7fad2b45dfa5b40887465259b736f92db6ff4a8ca8c48519612b2d4/publications"
      response = HTTP.auth(ENV["AUTHORIZATION"]).get(url)
      response.parse
    end
  end
end
