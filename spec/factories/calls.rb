FactoryGirl.define do
  factory :call do
    to_number "MyString"
    from_number "MyString"
    user nil
  end
end
