class Mailchimp < ApplicationRecord

      Gibbon::Request.new(api_key: "29e6f01ac72c7bcae25531daf1dbda03-us18")
      Gibbon::Request.api_key = "29e6f01ac72c7bcae25531daf1dbda03-us18"
      Gibbon::Request.timeout = 15
      Gibbon::Request.open_timeout = 15


  def subscribe(email)
    Gibbon::RequestGibbon::Request.new(api_key: "29e6f01ac72c7bcae25531daf1dbda03-us18").lists('691fe0e391').members.create(body: {email_address: "#{email}", status: "subscribed"})
  end

end


