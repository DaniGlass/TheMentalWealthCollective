class SubscriberController < ApplicationController

  def new
  end

  def create
    @subscriber = Subscriber.new(params[:email])
    Mailchimp.gibbon
    if @subscriber.save
      Mailchimp.subscribe(:email)
      flash[:notice] = "You have successfully subscribed"
      redirect_to home_index_path
    else
      flash[:notice] = "Something went wrong, please try again."
      render 'new'
    end
  end
end
