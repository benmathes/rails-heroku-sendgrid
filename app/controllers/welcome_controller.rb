class WelcomeController < ApplicationController

  def send_email
    UserMailer.welcome_email("joel.a.rojo@gmail.com").deliver_now
    flash[:notice] = 'Sent email!'
    redirect_to root_path
  end
end
