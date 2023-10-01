require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.new(name: 'John', email: 'john@mail', password: '123456') }
  before do
    user.save
  end

  it 'is valid with valid attributes' do
    group = Group.new(name: 'Sample', icon: 'icon_pointer', user:)
    expect(group).to be_valid
  end

  it 'is not valid without a name' do
    group = Group.new(icon: 'icon_pointer', user:)
    expect(group).to_not be_valid
  end

  it 'is not valid without an icon' do
    group = Group.new(name: 'Sample', user:)
    expect(group).to_not be_valid
  end
end
