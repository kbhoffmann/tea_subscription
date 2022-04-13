require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it { should belong_to :tea }
  it { should belong_to :customer }
  it { should define_enum_for(:status).with_values(active: 0, cancelled: 1) }
  it { should validate_presence_of :tea_id }
  it { should validate_presence_of :customer_id }
  it { should validate_presence_of :title }
  it { should validate_presence_of :status }
  it { should validate_presence_of :frequency }
  it { should validate_presence_of :box_quantity }
  it { should validate_numericality_of(:box_quantity).is_greater_than_or_equal_to(1) }
  it { should validate_numericality_of(:frequency).is_greater_than_or_equal_to(1) }
end
