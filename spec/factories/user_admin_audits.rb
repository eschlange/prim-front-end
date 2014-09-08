# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_admin_audit do
    user nil
    site nil
    action "MyString"
  end
end
