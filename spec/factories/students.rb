FactoryGirl.define do
  factory :student do
    last_name { FFaker::Name.last_name }
    first_name { FFaker::Name.first_name }
#    id "1"
    created_at "2016-07-05"
    updated_at "2016-07-05"
  end
end
