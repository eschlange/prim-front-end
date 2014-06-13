# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_consent do
    site nil
    irb_acceptance_image_url "MyString"
    consent_header "MyText"
    consent_body "MyText"
    consent_footer "MyText"
  end
end
