class RelationshipsController < ApplicationController
  def create
  end
#   def followings
#     @user = User.find(params[:user_id])
#     @users = @user.followings
#   end
#   def followers
#     @user = User.find(params[:user_id])
#     @users = @user.followers
# end
  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
  end
  def create
    # 自身で作ったログイン機能であれば、独自実装してあるはずの
    # logged_in?メソッドを使用して、ログイン時のみフォローできるようにする。
    if logged_in?
      @user = User.find(params[:relationship][:followed_id])
      current_user.follow!(@user)
    end  
  end
end
