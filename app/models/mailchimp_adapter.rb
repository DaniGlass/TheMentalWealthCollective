module Mailchimp
  class << self

  require "json"
  require "http"


    gibbon = Gibbon::Request.new(api_key: "")

  def subscribe(email_address)
    gibbon.lists(list_id).members.create(body: {email_address: email_address, status: "subscribed"})
  end

 end
end
