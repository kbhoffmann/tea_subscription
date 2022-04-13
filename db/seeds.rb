customer_1 = Customer.create!(first_name: "Kerri", last_name: "Hoffmann", email: "kerri@yahoo.com", address: "123 Main St, Denver, CO 80210")
customer_2 = Customer.create!(first_name: "Rob", last_name: "Katnich", email: "rob@gmail.com", address: "456 Broadway St, Denver, CO 80211")

tea_1 = Tea.create!(name: "Starry Night", description: "Night time tea", temperature: 90, brew_time: 5, price: 3.50)
tea_2 = Tea.create!(name: "Wakey Wakey", description: "Green tea", temperature: 100, brew_time: 7, price: 4.00)
tea_3 = Tea.create!(name: "Sweet and Spicey", description: "Chai tea", temperature: 95, brew_time: 5, price: 4.50)

subscription_1 = Subscription.create!(tea_id: tea_1.id, customer_id: customer_1.id, title: tea_1.name, status: 0, frequency: 4, box_quantity: 1)
subscription_2 = Subscription.create!(tea_id: tea_2.id, customer_id: customer_1.id, title: tea_2.name, status: 1, frequency: 4, box_quantity: 2)
subscription_2 = Subscription.create!(tea_id: tea_3.id, customer_id: customer_1.id, title: tea_3.name, status: 0, frequency: 8, box_quantity: 1)

subscription_1 = Subscription.create!(tea_id: tea_1.id, customer_id: customer_2.id, title: tea_1.name, status: 0, frequency: 4, box_quantity: 1)
subscription_2 = Subscription.create!(tea_id: tea_2.id, customer_id: customer_2.id, title: tea_2.name, status: 1, frequency: 4, box_quantity: 2)
subscription_2 = Subscription.create!(tea_id: tea_3.id, customer_id: customer_2.id, title: tea_3.name, status: 0, frequency: 8, box_quantity: 1)
