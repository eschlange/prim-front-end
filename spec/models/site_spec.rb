# spec/models/site.rb
require 'spec_helper'

describe Site do

  it 'has a valid factory' do
    FactoryGirl.create(:site).should be_valid
  end

  it 'has a valid Home after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.home.title != nil
  end

  it 'has a valid Resource after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.resource.title != nil
  end

  it 'has a valid About after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.about.title != nil
  end

  it 'has a valid Consent after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.consent.header != nil
  end

  it 'has a valid ContactUs after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.contact_us.title != nil
  end

  it 'has a valid Eligibility after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.eligibility.title != nil
  end

  it 'has a valid Funding after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.funding.title != nil
  end

  it 'has a valid Intervention after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.intervention.name != nil
  end

  it 'has a valid PointOfContact after create_default_site_content' do
    site = create(:site)
    site.create_default_site_content
    site.point_of_contact.title != nil
  end
end