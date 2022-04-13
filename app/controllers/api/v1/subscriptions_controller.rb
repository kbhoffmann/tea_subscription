class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.subscription_json(subscription), status: 201
    end
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(status: 1)
    render json: SubscriptionSerializer.subscription_json(subscription)
  end


  def index
    all_subscriptions = Customer.find(params[:id]).subscriptions
    render json: AllSubscriptionsSerializer.subscription_json(all_subscriptions)
  end

  private

  def subscription_params
    params.permit(:tea_id, :customer_id, :title, :status, :frequency, :box_quantity)
  end
end
