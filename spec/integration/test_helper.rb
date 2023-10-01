def sample_data
  let!(:user) do
    User.create(
      name: 'John',
      email: 'john@m',
      password: '123456'
    )
  end

  let!(:group) do
    Group.create(
      name: 'Group',
      icon: 'icon',
      user_id: user.id
    )
  end

  let!(:expense) do
    Expense.create(
      name: 'Expense',
      amount: 100,
      author_id: user.id,
      group_ids: [group.id]
    )
  end
end

def login(email,password)
  visit new_user_session_path
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Log in'
end