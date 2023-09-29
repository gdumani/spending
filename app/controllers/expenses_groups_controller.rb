class ExpensesGroupsController < ApplicationController
  def create
    expense = Expense.find(params[:expense_id])
    group = Group.find(params[:group_id])
    expense.groups << group unless expense.groups.include?(group)
    redirect_to expense_path(expense)
  end

  def destroy
    expense = Expense.find(params[:expense_id])
    group = Group.find(params[:group_id])
    expense.groups.delete(group)
    redirect_to expense_path(expense)
  end
end
