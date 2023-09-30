require 'rails_helper'

RSpec.describe User, type: :model do
  require 'rails_helper'
  
    it 'is valid with valid attributes' do
      user = User.create(name: 'Sam', email: 'sam@mail', password: '123456')
      expect(user).to be_valid
    end
  
    it 'is not valid without a name' do
      user = User.create(email: 'sam@mail', password: '123456')
      expect(user).to_not be_valid
    end
  
    it 'is not valid without email' do
      user = User.create(name: 'Sam', password: '123456')
      expect(user).to_not be_valid
    end 

    it 'is not valid without password' do
      user = User.create(name: 'Sam', email: 'sam@mail')
      expect(user).to_not be_valid
    end 
  end
