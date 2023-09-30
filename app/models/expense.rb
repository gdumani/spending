class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :groups

  before_destroy :remove_from_groups

  validates :name, presence: true
  validates :amount, numericality: true
  validates :at_least_one_group?, presence: true

  private

  def remove_from_groups
    groups.clear
  end

  def at_least_one_group?
    groups.any?
  end
end
