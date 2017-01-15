FactoryGirl.define do
  factory :user do
	  email "user@example.com"
    encrypted_password "password"
  end
end
