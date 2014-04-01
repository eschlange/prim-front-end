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