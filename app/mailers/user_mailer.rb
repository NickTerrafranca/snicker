class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation from Snikr"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset from Snkier"
    # see if this works
    # mail({to: user.email, subject: "Password reset from Snkier"})
  end
end
