class SubscriptionsController < ApplicationController

def new
end

def create
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken],
    :plan => "basic"
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to subscriptions_path
end

end
