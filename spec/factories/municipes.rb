FactoryBot.define do
  factory :municipe do
    name { FFaker::NameBR.name }
    email { FFaker::Internet.safe_email }
    birthday { FFaker::Date.birthday }
    phone { '+55 32 97761-3820' }
    status { 'active' }
    cpf { FFaker::IdentificationBR.pretty_cpf }
    cns { '123456789123456' }
    address

    transient do
      photo_path { 'spec/fixtures/images/user.png' }
    end

    photo do
      Rack::Test::UploadedFile.new(
        Rails.root.join(photo_path),
        'image/png'
      )
    end
  end
end
