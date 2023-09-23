class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :amount, numericality: true

  def total
    sum(:amount)
  end

  def total_for_user(user)
    where(author: user).total
  end

  def total_for_group(group)
    joins(:groups).where(groups: { id: group.id }).total
  end

  def total_for_user_and_group(user, group)
    joins(:groups).where(groups: { id: group.id }, author: user).total
  end
end
