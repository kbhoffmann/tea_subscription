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

### Api endpoings:

```
subscription_1 = {
                  tea_id: tea_1.id,
                  customer_id: customer_1.id,
                  title: "My Subscription",
                  frequency: 4,
                  box_quantity: 1,
                 }                    
```
```
post "/api/v1/customers/#{customer_1.id}/subscriptions", params: subscription_1, as: :json
```
```
get "/api/v1/customers/#{customer_1.id}/subscriptions"
```
```
patch "/api/v1/customers/#{customer_1.id}/subscriptions/#{subscription_1.id}", params: subscription_1, as: :json
```





