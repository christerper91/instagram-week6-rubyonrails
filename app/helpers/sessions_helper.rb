module SessionsHelper

  # Logs in the given user.
  def log_in(pengguna)
    session[:pengguna_id] = pengguna.id
  end

  def current_user
    if @current_user.nil?
   @current_user ||= Pengguna.find_by(id: session[:pengguna_id])
  else
     @current_user
  end
 end

  def log_out
    session.delete(:pengguna_id)
    @current_user = nil
  end

  def logged_in
    #to check if the current user exist
    current_user.present?
  end

end
