FactoryGirl.define do
  factory :student do
    last_name { FFaker::Student.last_name }
    first_name { FFaker::Student.first_name }
    user_id "1"
  end
end
