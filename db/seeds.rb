# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(:first_name => "Test", :last_name => "Participant", :email => "participant1@example.com", :encrypted_password => User.new.send(:password_digest, 'secrets!'))

Role.create(:id => 1, :name => "admin", :description => "Full access user.")
Role.create(:id => 2, :name => "content manager", :description => "Creates and edits pages and creates participants.")
Role.create(:id => 3, :name => "participant", :description => "Reads pages and can edit personal user information.")

Site.create(:id => 1, :name => "MACs", :description => "This is the content of the homes page for MACs.")

Intervention.create(:id => 1, :name => "MACs Intervention", :description => "Description goes here for the MACs intervention.")

Home.create(:title => "MACs Home", :content => "Description goes here for the MACs homes page.", :site_id => 1)
About.create(:title => "MACs About", :content => "Description goes here for the MACs about page.", :site_id => 1)
ContactUs.create(:title => "MACs Contact Us", :content => "Description goes here for the MACs contact us page.", :site_id => 1)
Funding.create(:title => "MACs Funding", :content => "Description goes here for the MACs funding page.", :site_id => 1)
Resource.create(:title => "MACs Publications and Resources", :content => "Description goes here for the MACs resource page.", :site_id => 1)
Eligibility.create(:title => "MACs Eligibility", :content => "Description goes here for the MACs eligibility page.", :site_id => 1)