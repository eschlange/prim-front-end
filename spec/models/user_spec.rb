require_relative '../spec_helper'
require 'user'

describe User do
  it 'role should be initialized to a participant' do
    user = User.create
    expect(user.role_name).to eq('participant')
  end

  it 'should only have participant privileges' do
    user = User.create
    expect(user.at_least_a_super_user?).to eq(false)
    expect(user.at_least_a_admin?).to eq(false)
    expect(user.at_least_a_content_manager?).to eq(false)
    expect(user.at_least_a_participant?).to eq(true)
  end
end