class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer

  validates_presence_of :title
  validates_presence_of :frequency
  validates_numericality_of :frequency, greater_than_or_equal_to: 1
  validates_presence_of :box_quantity
  validates_numericality_of :box_quantity, greater_than_or_equal_to: 1
  enum status: {active: 0, cancelled: 1}
end
