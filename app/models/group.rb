require Rails.root.join('config', 'expense_icons.rb')

class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  before_destroy :remove_from_expenses

  validates :name, presence: true
  validates :icon, presence: true

  private

  def remove_from_expenses
    expenses.clear
  end
end
