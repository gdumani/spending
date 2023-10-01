require 'rails_helper'
require './spec/integration/test_helper'

RSpec.describe 'Expense', type: :feature do
  sample_data

  describe 'New Expense' do
    it 'displays expense' do
      login(user.email, user.password)
      visit new_expense_path
      expect(page).to have_content('New expense')
    end
  end
end