require Rails.root.join('config', 'expense_icons.rb')

class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  before_destroy :remove_from_expenses

  validates :name, presence: true

  # def total
  #   sum(:amount)
  # end

  # def total_for_user(user)
  #   where(author: user).total
  # end

  # def total_for_group(group)
  #   joins(:groups).where(groups: { id: group.id }).total
  # end

  # def total_for_user_and_group(user, group)
  #   joins(:groups).where(groups: { id: group.id }, author: user).total
  # end

  private

  def remove_from_expenses
    expenses.clear
  end
end
