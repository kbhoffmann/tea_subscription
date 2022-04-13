require 'rails_helper'

RSpec.describe 'Get All Subscriptions Request' do
  it 'can show all cancelled AND active subscriptions for a customer' do
    customer_1 = Customer.create!(first_name: "Kerri", last_name: "Hoffmann", email: "kerri@yahoo.com", address: "123 Main St, Denver, CO 80210")
    tea_1 = Tea.create!(name: "Starry Night", description: "Night time tea", temperature: 90, brew_time: 5, price: 3.50)
    tea_2 = Tea.create!(name: "Wakey Wakey", description: "Green tea", temperature: 100, brew_time: 7, price: 4.00)
    tea_3 = Tea.create!(name: "Sweet and Spicey", description: "Chai tea", temperature: 95, brew_time: 5, price: 4.50)
    subscription_1 = Subscription.create!(tea_id: tea_1.id, customer_id: customer_1.id, title: tea_1.name, status: 0, frequency: 4, box_quantity: 1)
    subscription_2 = Subscription.create!(tea_id: tea_2.id, customer_id: customer_1.id, title: tea_2.name, status: 1, frequency: 4, box_quantity: 2)
    subscription_2 = Subscription.create!(tea_id: tea_3.id, customer_id: customer_1.id, title: tea_3.name, status: 0, frequency: 8, box_quantity: 1)

    get "/api/v1/customers/#{customer_1.id}/subscriptions"

    all_subscriptions_response = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(200)

    expect(all_subscriptions_response).to be_an(Array)

    all_subscriptions_response.each do |subscript|
      expect(subscript[:data][:type]).to eq("subscriptions")
      expect(subscript[:data]).to have_key(:id)
      expect(subscript[:data]).to have_key(:attributes)
      expect(subscript[:data][:attributes]).to have_key(:title)
      expect(subscript[:data][:attributes]).to have_key(:status)
      expect(subscript[:data][:attributes]).to have_key(:frequency)
      expect(subscript[:data][:attributes]).to have_key(:box_quantity)
      expect(subscript[:data][:attributes]).to have_key(:frequency)
    end

    expect(all_subscriptions_response[0][:data][:attributes][:status]).to eq("active")
    expect(all_subscriptions_response[1][:data][:attributes][:status]).to eq("cancelled")
    expect(all_subscriptions_response[2][:data][:attributes][:status]).to eq("active")
  end
end
