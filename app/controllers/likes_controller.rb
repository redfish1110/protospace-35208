class LikesController < ApplicationController
  before_action :set_prototype, only: [:create, :destroy]

  def create
    like = current_user.likes.build(prototype_id: params[:prototype_id])
    like.save
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    like.destroy
  end

  private
  
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
