class SessionsController < ApplicationController
  def new
  end


  def create
     pengguna = Pengguna.find_by(email: params[:session][:email])
     if pengguna && pengguna.authenticate(params[:session][:password])
       log_in pengguna
       redirect_to pengguna_path(pengguna)
       # Log the user in and redirect to the user's show page.
     else
       flash.now[:danger] = 'Invalid email/password combination'
       render 'new'
     end
  end



  def destroy
  log_out
  redirect_to root_path
  end

end
