require 'rails_helper'
require './spec/integration/test_helper'

RSpec.describe 'Group', type: :feature do
  sample_data

  describe 'show' do
    it 'displays group' do
      login(user.email, user.password)
      visit group_path(group)
      expect(page).to have_content('Expenses')
    end
  end
end
