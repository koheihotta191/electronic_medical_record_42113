class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(staff_id: params[:staff_id])

    if user&.authenticate(params[:password]) && user.active
      session[:user_id] = user.id
      redirect_to root_path, notice: "ログイン成功しました！"
    else
      flash.now[:alert] = "職員IDまたはパスワードが正しくありません"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "ログアウトしました"
  end
end