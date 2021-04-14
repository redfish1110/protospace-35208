class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile, :coccupation, :position).marge(user_id: current_use.id)
  end
end
