class SubscriptionSerializer
  def self.subscription_json(subscript_info)
    {
      "data": {
        "type": "subscriptions",
        "id": subscript_info.id,
        "attributes":{
          "title": subscript_info.title,
          "status": subscript_info.status,
          "frequency": subscript_info.frequency,
          "box_quantity": subscript_info.box_quantity,
          "tea_id": subscript_info.tea_id,
          "customer_id": subscript_info.customer_id
        }
      }
    }
  end
end
