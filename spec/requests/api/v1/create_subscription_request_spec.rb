require 'rails_helper'

RSpec.describe 'Create Subscription Request' do
  it 'can create a new customer subscription' do
    customer_1 = Customer.create!(first_name: "Kerri", last_name: "Hoffmann", email: "kerri@yahoo.com", address: "123 Main St, Denver, CO 80210")
    tea_1 = Tea.create!(name: "Starry Night", description: "Night time tea", temperature: 90, brew_time: 5, price: 3.50)

    customer_2 = Customer.create!(first_name: "Rob", last_name: "Katnich", email: "rob@gmail.com", address: "123 Main St, Denver, CO 80210")
    tea_2 = Tea.create!(name: "Starry Night", description: "Night time tea", temperature: 90, brew_time: 5, price: 3.50)

    subscription_1 = {
                        "tea_id": "#{tea_1.id}",
                        "customer_id": "#{customer_1.id}",
                        "title": "#{tea_1.name}",
                        "status": "active",
                        "frequency": "4",
                        "box_quantity": "1",
                      }

    post "/api/v1/customers/#{customer_1.id}/subscriptions", params: subscription_1, as: :json

    expect(Subscription.last[:tea_id]).to eq(tea_1.id)

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(201)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response[:data][:type]).to eq("subscriptions")
    expect(parsed_response[:data]).to have_key(:id)
    expect(parsed_response[:data][:attributes][:customer_id]).to eq(customer_1.id)
    expect(parsed_response[:data][:attributes][:tea_id]).to eq(tea_1.id)
    expect(parsed_response[:data][:attributes][:title]).to eq("Starry Night")
    expect(parsed_response[:data][:attributes][:status]).to eq("active")
    expect(parsed_response[:data][:attributes][:frequency]).to eq(4)
    expect(parsed_response[:data][:attributes][:box_quantity]).to eq(1)
    expect(parsed_response[:data][:attributes][:customer_id]).to_not eq(customer_2.id)
  end
end
