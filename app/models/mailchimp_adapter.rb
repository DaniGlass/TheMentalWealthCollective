module Mailchimp
  class << self

  require "json"
  require "http"


    gibbon = Gibbon::Request.new(api_key: "29e6f01ac72c7bcae25531daf1dbda03-us18")

  def subscribe(email_address)
    gibbon.lists(list_id).members.create(body: {email_address: email_address, status: "subscribed"})
  end

 end
end
