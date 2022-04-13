class AllSubscriptionsSerializer
  def self.subscription_json(all_subscriptions)
    all_subscriptions.map do |subscript|
      {
        "data": {
          "type": "subscriptions",
          "id": subscript.id,
          "attributes":{
            "title": subscript.title,
            "status": subscript.status,
            "frequency": subscript.frequency,
            "box_quantity": subscript.box_quantity,
            "tea_id": subscript.tea_id,
            "customer_id": subscript.customer_id
          }
        }
      }
    end
  end
end
