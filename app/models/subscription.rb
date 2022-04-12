class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
  validates_presence_of :tea_id
  validates_presence_of :customer_id
  validates_presence_of :title
  validates_presence_of :status
  validates_presence_of :frequency
  validates_presence_of :box_quantity
  enum status: {active: 0, cancelled: 1}
end
