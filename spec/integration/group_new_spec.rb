require 'rails_helper'
require './spec/integration/test_helper'

RSpec.describe 'Group', type: :feature do
  sample_data

  describe 'New Group' do
    it 'displays group' do
      login(user.email, user.password)
      visit new_group_path
      expect(page).to have_content('New group')
    end
  end
end
