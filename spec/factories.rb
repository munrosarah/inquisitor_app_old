FactoryGirl.define do
  factory :user do
    name     "Escher Munro"
    email    "escher@fake.com"
    password "biscuit"
    password_confirmation "biscuit"
  end
end