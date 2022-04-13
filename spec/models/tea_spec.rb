require 'rails_helper'

RSpec.describe Tea, type: :model do
  it { should have_many :subscriptions}
  it { should have_many(:customers).through(:subscriptions)}
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :temperature }
  it { should validate_presence_of :brew_time }
  it { should validate_presence_of :price }
  it { should validate_numericality_of(:temperature).is_greater_than(0) }
  it { should validate_numericality_of(:brew_time).is_greater_than_or_equal_to(1) }
  it { should validate_numericality_of(:price).is_greater_than(0) }
end
