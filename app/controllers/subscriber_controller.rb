class SubscriberController < ApplicationController

  def new
  end

  def create
    # render plain: params[:subscriber].inspect
    @subscriber = Subscriber.new(subscriber_params)

    gibbon = Gibbon::Request.new(api_key: "29e6f01ac72c7bcae25531daf1dbda03-us18")
    gibbon.lists('691fe0e391').members.create(body: {email_address: "#{@subscriber[:email]}", status: "subscribed"})

    if @subscriber.save
      flash[:notice] = "You have successfully subscribed. Thanks!"
      redirect_to home_index_path

    else
      flash[:notice] = "Something went wrong, please try again."
      render 'new'
    end
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
