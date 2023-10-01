require 'rails_helper'
require './spec/integration/test_helper'

RSpec.describe 'Login', type: :feature do
  sample_data

  describe 'sign in' do
    it 'signs user in' do
      login(user.email, user.password)
      expect(page).to have_content('Signed in successfully.')
    end
  end
end
