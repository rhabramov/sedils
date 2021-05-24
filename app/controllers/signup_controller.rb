class SignupController < ApplicationController
  def index
  end

  def create_signup
    @signup = Signup.new(signup_params)
    flash.now[:alert] = 'Alert message!'
    flash.now[:error] = "Your book was not found"

    if @signup.save
      # redirect_to root_path, :notice => 'Thanks for signing up.'
      redirect_to root_path
    else
      # redirect_to :index, :notice => 'Error'
      flash[:notice] = 'Error'
      redirect_to root_path
    end
  end

  private
    def signup_params
      params.permit(:email, :comment)
    end
end
