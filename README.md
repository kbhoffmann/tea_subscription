# README

![DB Schema](https://user-images.githubusercontent.com/84674761/163491350-c777a304-cc55-41c2-83e2-7f70c78c6aec.png)

# About:
  This is a practice take-home challenged from Turing School of Software and Design.  I've designed an app to create api endpoints for a front-end team to consume.  I've designed a database with tables for Teas, Customers, and Subscriptions. 
 
### Project stats:
   ![languages](https://img.shields.io/github/languages/top/kbhoffmann/tea_subscription?color=red)
   ![closed PRs](https://img.shields.io/github/issues-pr-closed/kbhoffmann/tea_subscription?style=flat-square)   

### Created using:
![RoR](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
- Ruby 2.7.2 
- Rails 5.2.6  
- PostgreSQL
- RSpec

### Cloning and Setup:
   * Clone this repo onto your local machine
   * cd into the tea_subscription directory
   * Run ```bundle```
   * Run ```rails db:{create, migrate, seed}```
   * Run test suite with ```bundle exec rspec```

### Api endpoint:


##### Request for creating a subscription: 
```
subscription= {
                  tea_id: tea_1.id,
                  customer_id: customer_1.id,
                  title: "My Subscription",
                  frequency: 4,
                  box_quantity: 1,
                 }                    

post "/api/v1/customers/#{customer_1.id}/subscriptions", params: subscription, as: :json
```

##### Response for creating a subscription: 
```
 {
        "data": {
            "type": "subscriptions",
            "id": 1,
            "attributes": {
                "title": "Starry Night",
                "status": "active",
                "frequency": 4,
                "box_quantity": 1,
                "tea_id": 1,
                "customer_id": 1
            }
        }
    }
```

##### Request retrieving all customer subscriptions:
```
get "/api/v1/customers/#{customer_1.id}/subscriptions"
```
##### Response retrieving all customer subscriptions:

```
[
    {
        "data": {
            "type": "subscriptions",
            "id": 1,
            "attributes": {
                "title": "Starry Night",
                "status": "active",
                "frequency": 4,
                "box_quantity": 1,
                "tea_id": 1,
                "customer_id": 1
            }
        }
    },
    {
        "data": {
            "type": "subscriptions",
            "id": 2,
            "attributes": {
                "title": "Wakey Wakey",
                "status": "cancelled",
                "frequency": 4,
                "box_quantity": 2,
                "tea_id": 2,
                "customer_id": 1
            }
        }
    },
    {
        "data": {
            "type": "subscriptions",
            "id": 3,
            "attributes": {
                "title": "Sweet and Spicey",
                "status": "active",
                "frequency": 8,
                "box_quantity": 1,
                "tea_id": 3,
                "customer_id": 1
            }
        }
    }
]
```

##### Request for cancelling a subscription: 
```
patch "/api/v1/customers/#{customer_1.id}/subscriptions/#{subscription_1.id}", params: subscription_1, as: :json
```

##### Response for cancelling a subscription: 
```
    {
        "data": {
            "type": "subscriptions",
            "id": 1,
            "attributes": {
                "title": "Starry Night",
                "status": "active",
                "frequency": 4,
                "box_quantity": 1,
                "tea_id": 1,
                "customer_id": 1
            }
        }
    }
```






