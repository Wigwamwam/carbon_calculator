class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def admin
    @users = User.all
    # have not included this in the views
    @companies = Company.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def admin_users_only
    unless current_user.admin?
      redirect_to user_path(current_user), notice: "You are not permitted to access this page"
    end
  end
end
