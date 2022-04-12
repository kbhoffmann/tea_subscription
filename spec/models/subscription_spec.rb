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
end
