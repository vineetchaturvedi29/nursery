class RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(sign_up)
    if @user.save
      sign_in(resource)
      redirect_to root_path
      # UserMailer.welcome(@user).deliver_later
    end
  end

  private
  def sign_up
    params.require(:user).permit(:name, :email, :password, :password_confirmation, address:  [:id,:_destroy,:line1, :postal_code,:city,:country,:state])
  end
end
