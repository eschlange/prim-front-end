# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :site do |s|
    s.name { Faker::Company.name }
    s.content { Faker::Lorem.paragraph(2) }
    s.template_name 'simplemap'
  end
end