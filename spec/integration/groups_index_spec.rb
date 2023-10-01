require 'rails_helper'
require './spec/integration/test_helper'

RSpec.describe 'Groups', type: :feature do
  sample_data

  describe 'index' do
    it 'displays groups' do
      login(user.email, user.password)
      visit groups_path
      expect(page).to have_content('Groups')
    end
  end
end