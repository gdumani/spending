require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) { User.new(name: 'John', email: 'john@mail', password: '123456') }
  let(:group) { Group.new(name: 'Sample-group', icon: 'icon-url') }
  before do
    user.save
    group.user = user
    group.save
  end

  it 'is valid with valid attributes' do
    expense = Expense.new(name: 'Sample', amount: 5, author: user)
    expense.groups << group
    expect(expense).to be_valid
  end

  it 'is not valid without a group' do
    expense = Expense.new(name: 'Sample', amount: 5, author: user)
    expect(expense).to_not be_valid
  end

  it 'is not valid without name' do
    expense = Expense.new(amount: 5, author: user)
    expense.groups << group
    expect(expense).to_not be_valid
  end

  it 'is not valid without an amount' do
    expense = Expense.new(name: 'Sample', author: user)
    expense.groups << group
    expect(expense).to_not be_valid
  end
end
