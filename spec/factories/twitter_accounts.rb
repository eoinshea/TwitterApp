FactoryGirl.define do
  factory :twitter_account do
    content ""
    name Faker.name
    profile_image "image.jpg"
  end
end
