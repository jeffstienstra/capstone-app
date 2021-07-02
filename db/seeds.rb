User.create(username: "Jeff", email: "jeff@test.com", password: "password")
User.create(username: "Test", email: "Test@test.com", password: "password")

Favorite.create(user_id: 1, park_name: "Acadia National Park", address: "25 Visitor Center Road, Bar Harbor, ME 06409", api_id: "6DA17C86-088E-4B4D-B862-7C1BD5CF236B", image_url: "https://www.nps.gov/common/uploads/structured_data/3C7B45AE-1DD8-B71B-0B7EE131C7DFC2F5.jpg")
Favorite.create(user_id: 2, park_name: "Yosemite National Park", address: "9039 Village Drive, Yosemite, CA 95389", api_id: "4324B2B4-D1A3-497F-8E6B-27171FAE4DB2", image_url: "https://www.nps.gov/common/uploads/structured_data/05383E91-AA28-2DDC-AB517507594F9FA6.jpg")

Journal.create(title: "First Visit to Acadia", body: "What an awesome trip, so many mooses!", date: "5-1-21", favorite_id: 1)
Journal.create(title: "Acadia Returns", body: "This is my 2nd time to Acadia!", date: "6-1-21", favorite_id: 1)
Journal.create(title: "Yo Yo Yosemite!", body: "My first trip to Yosemite.", date: "7-1-21", favorite_id: 2)
Journal.create(title: "Back to Yosemite", body: "2nd Yosemite trip was a blast!", date: "8-1-21", favorite_id: 2)
