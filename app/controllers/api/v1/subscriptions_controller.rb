class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.subscription_json(subscription), status: 201
    end
  end

  def subscription_params
    params.permit(:tea_id, :customer_id, :title, :status, :frequency, :box_quantity)
  end
end
