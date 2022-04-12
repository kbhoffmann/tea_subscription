class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :temperature
  validates_presence_of :brew_time
  validates_presence_of :price
end
