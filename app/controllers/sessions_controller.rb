class SessionsController < ApplicationController
	skip_before_action :login_required
  def new
  end

  def create
  	user = User.find_by(email: session_params[:email])

   # Userクラスにhas_secure_passwordして自動で追加された認証のためのメソッド
   # 引数で受け取ったパスワードをハッシュ化してその結果がUserオブジェクト内に保存されてるdigest
   # と一致するか調べる
  	if user&.authenticate(session_params[:password])
  		session[:user_id] = user.id
  		redirect_to root_path, notice: 'You are logined'
  	else
  		render 'new'
  	end
  end

  def destroy
  	reset_session
  	redirect_to root_path, notice: 'logout'
  end

  private

  def session_params
  	params.require(:session).permit(:email, :password)
  end
end
