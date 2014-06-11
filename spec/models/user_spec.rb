require_relative '../spec_helper'
require 'user'

describe User do
  it 'should be initialized to a participant' do
    user = User.create
    expect(user.role.id).to eq(4)
  end
end