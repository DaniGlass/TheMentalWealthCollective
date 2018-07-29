class SubscriberController < ApplicationController

  def new
  end

  def create
    # render plain: params[:subscriber].inspect
    @subscriber = Subscriber.new(subscriber_params)

    gibbon = Gibbon::Request.new(api_key: "29e6f01ac72c7bcae25531daf1dbda03-us18")

    if @subscriber.save
      gibbon.lists('691fe0e391').members.create(body: {email_address: "#{@subscriber[:email]}", status: "subscribed"})
      flash[:notice] = "You have successfully subscribed. Thanks!"
      redirect_to home_index_path
    else
      flash[:notice] = "Looks like you are already subscribed or this is an invalid email address."
      redirect_to home_index_path
    end
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
