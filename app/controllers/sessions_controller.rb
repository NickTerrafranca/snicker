class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      # stuff
      flash.now[:danger] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
  end
end
