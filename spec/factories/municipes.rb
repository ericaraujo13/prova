FactoryBot.define do
  factory :municipe do
    name { FFaker::NameBR.name }
    email { FFaker::Internet.safe_email }
    birthday { FFaker::Date.birthday }
    phone { FFaker::PhoneNumberBR.international_mobile_phone_number }
    photo { "MyString" }
    status { rand(0..1) }
  end
end
