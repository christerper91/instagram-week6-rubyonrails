class PenggunasController < ApplicationController

  def new
  @pengguna = Pengguna.new
  end

  def create
    @pengguna = Pengguna.create(user_params)
    if @pengguna.save
      # Handle a successful save.
    redirect_to pengguna_path(@pengguna), notice: 'You have successfully signed up.'
    else
      render 'new'
    end
  end

  def current_user
    if @current_user.nil?
      @current_user ||= User.find_by(id: session[:user_id])
   else
      @current_user
   end
  end

  def show
    @user = Pengguna.find(params[:id])
    @comment = Comment.new
  end

  private
    def user_params
      params.require(:pengguna).permit(:username, :email, :password, :password_confirmation)
    end
end