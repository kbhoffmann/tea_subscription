class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :temperature
  validates_numericality_of :temperature, greater_than: 0
  validates_presence_of :brew_time
  validates_numericality_of :brew_time, greater_than_or_equal_to: 1
  validates_presence_of :price
  validates_numericality_of :price, greater_than: 0
end
